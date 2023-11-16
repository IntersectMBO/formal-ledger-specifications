#!/bin/bash
shopt -s globstar

out="${1:-typecheck.time}"
touch $out

function displayTimeDiff {
  diff=$(($1 - $2))
  echo "$(($diff / 60))m$(($diff % 60))s"
}

# Typecheck Agda files (if not already checked)
sh ./checkTypeChecked.sh
if [ "$?" != 0 ]; then
  echo "Not all Agda files have been typechecked, checking from scratch..."
  start=$(date +%s)
  echo "  start: $start"
  echo $AGDA
  ${AGDA:-agda} Everything.agda
  end=$(date +%s)
  echo "  end: $end"
  total="$(displayTimeDiff $end $start)"
  echo "  TOTAL: ${total}"
fi
# Record relative durations of each module
echo "Writing individual times to: $out..."
noStartMsg='Agda files have already been typechecked; start counting after the first module'
echo "TOTAL: ${total:-??? ($noStartMsg)}" > $out
is=$(ls -hltr --full-time **/*.agdai | awk '{
  printf("%s>%s %s\n", $9, $6, $7)
}')
cur=$start
while IFS= read -r i; do
  agdaiFn=$(echo $i | cut -d'>' -f1)
  tv=$(echo "$i" | cut -d'>' -f2 | tr '%' '\n')
  t=$(date "+%s" -d "$tv")
  echo "${agdaiFn%.agdai}: $(displayTimeDiff $t ${cur:-t})" >> $out
  cur=$t
done <<< "$is"%
