# Generate a html file that plots typecheking times that stored in the
# branch master-artifacts
import subprocess
import pandas as pd
from io import StringIO

# Run git to retrieve the list of commits in master-artifacts
result = subprocess.run([ "git"
                        , "--no-pager"
                        , "log"
                        , "origin/master-artifacts"
                        , "--reverse"
                        , "--pretty=%H" ], capture_output=True, text=True)

commits = result.stdout.splitlines()

# Create a new empty dataframe
df = pd.DataFrame(columns=['module'])

# Iterate over the list of modules to retrieve the contents
# of the typecheck.time file to merge on the dataframe
for commit in commits:
    typecheck_file = subprocess.run([ "git"
                                    , "--no-pager"
                                    , "show"
                                    , f"{commit}:typecheck.time" ], capture_output=True, text=True)

    orig_commit = subprocess.run([ "git"
                                 , "--no-pager"
                                 , "show"
                                 , "-s"
                                 , "--format=%s"
                                 , f"{commit}" ]
                                 , capture_output=True
                                 , text=True).stdout.split()[-1]

    time_df = pd.read_csv(StringIO(typecheck_file.stdout)
                         , sep=r'\s+'
                         , header=None
                         , names=['module', f"{orig_commit}"]
                         , converters={ f"{orig_commit}" : lambda s : int(s.replace(',','')[:-2]) } # parse the times as ints
                         , skipinitialspace=True # skip preceding spaces
                         , skiprows=[0] # remove the total row
                         )

    df = pd.merge(df, time_df, on='module', how='outer')

data = df.to_json(None, index=False, orient="split")

html = f"""
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Typechecking times</title>
  <style>
    html, body {{
      height: 100%;
      margin: 0;
      padding: 0;
    }}
    #chart-wrapper {{
      width: 100vw;
      height: 100vh;
      box-sizing: border-box;
    }}
    #chart {{
      width: 100%;
      height: 100%;
      display: block;
    }}
  </style>
</head>
<body>
  <div id="chart-wrapper">
    <canvas id="chart"></canvas>
  </div>
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <!-- chartjs-plugin-datasource -->
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datasource"></script>
  <script>
    const ctx = document.getElementById('chart').getContext('2d');
    const data = {data}
    const chart = new Chart(ctx, {{
      type: 'bar',
      data: {{
        labels: data.columns.slice(1),
        datasets: data.data.map((row, idx) => ({{
          label: row[0],
          data: row.slice(1),
          }}))
      }},
      options: {{
        plugins: {{
          legend: {{ display: false }}
        }},
        responsive: true,
        maintainAspectRatio: false,
        scales: {{
          x: {{ stacked: true,
                ticks: {{
                  font: {{
                    size: 20
                  }}
                }}
             }},
          y: {{ stacked: true }}
        }}
      }}
    }});
  </script>
</body>
</html>
"""
print(html)
