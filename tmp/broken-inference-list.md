## Temporary file of notes on improving type inference behvior

The [86-broken-inference][] branch is for work on this issue (created with "Create a branch" link on the [GitHub issue page][issue 86]).

## Work on Broken inference ticket 86

There are many places where we currently have to pass arguments manually that feel like they should be inferred automatically. The purpose of this issue is to weed these out as much as possible. We should collect the functions that are likely to have this behavior, organize them into similar groups and document the issues that break inference. We can then make a plan to fix those issues.

- [ ] List functions with broken inference
- [ ] Group them into similar types
- [ ] Document why they are broken
- [ ] Fix as many as possible


### Instances of badly behaving type inference


-  [ ] [Axiom/Set.agda#L89][]

   ```agda
   finite : Set A → Type ℓ
   finite X = ∃[ l ] ∀ {a} → a ∈ X ⇔ a ∈ˡ l
   ```
   (we must specify `A` in `finite {A = A}`; see, e.g., [Axiom/Set/Properties.agda#L153][])

-  [ ] [Axiom/Set.agda#L92][]

   ```agda
   weakly-finite : Set A → Type ℓ
   weakly-finite X = ∃[ l ] ∀ {a} → a ∈ X → a ∈ˡ l
   ```
   (we must specify `A` in `weakly-finite {A = A}`; see, e.g., [Axiom/Set/Properties.agda#L150][])

-  [ ] [Axiom/Set.agda#L92][]

   ```agda
   ∈-mapPartial : {y : B} {f : A → Maybe B} → (∃[ x ] x ∈ X × f x ≡ just y) ⇔ y ∈ mapPartial f X
   ∈-mapPartial {X = X} {y} {f} = ...
   ```
   (we must specify `f` in `∈-mapPartial {f = f}`; see, e.g., [Axiom/Set/Properties.agda#L160][])

-  [ ] [Axiom/Set/Properties.agda#L74][]

   ```agda
   -- FIXME: proving this has weird issues when making a implicit in the definiton of _≡ᵉ'_
   ≡ᵉ⇔≡ᵉ' : X ≡ᵉ Y ⇔ X ≡ᵉ' Y
   ≡ᵉ⇔≡ᵉ' = mk⇔
     (λ where (X⊆Y , Y⊆X) _ → mk⇔ X⊆Y Y⊆X)
     (λ a∈X⇔a∈Y → (λ {_} → to (a∈X⇔a∈Y _)) , λ {_} → from (a∈X⇔a∈Y _))
      ```
      
-  [ ] [Axiom/Set/Properties.agda#L119][]

   ```agda
   ∈-× : {a : A} {b : B} → (a , b) ∈ X → (a ∈ map proj₁ X × b ∈ map proj₂ X)
   ∈-× {X = X} {a = a} {b = b} x = to ∈-map ((a , b) , refl , x) , to ∈-map ((a , b) , refl , x)
   ```

   Not really an example of "broken inference," but we don't need `X` here.
   Instead, `∈-× {a = a} {b} x = ...` works fine.
   ```


### Group them into similar types


### Document why they are broken


### Fix as many as possible


--------------------------

<!-- -  [ ] [Axiom/Set/Properties.agda#L88][] -->

<!--    ```agda -->
<!--    ⊆-Transitive : Transitive (_⊆_ {A}) -->
<!--    ⊆-Transitive X⊆Y Y⊆Z = Y⊆Z ∘ X⊆Y -->
<!--    ``` -->

<!-- -  [ ] [Axiom/Set/Properties.agda#L91][] -->

<!--    ```agda -->
<!--    ≡ᵉ-isEquivalence : IsEquivalence (_≡ᵉ_ {A}) -->
<!--    ≡ᵉ-isEquivalence = record -->
<!--      { refl = id , id -->
<!--      ; sym = λ where (h , h') → (h' , h) -->
<!--      ; trans = λ eq₁ eq₂ → ⊆-Transitive (proj₁ eq₁) (proj₁ eq₂) , ⊆-Transitive (proj₂ eq₂) (proj₂ eq₁) -->
<!--      } -->
<!--    ``` -->

<!-- -  [ ] [Axiom/Set/Properties.agda#L104][] -->
  
<!--    ```agda -->
<!--    ⊆-isPreorder : IsPreorder (_≡ᵉ_ {A}) _⊆_ -->
<!--    ⊆-isPreorder = λ where -->
<!--      .isEquivalence → ≡ᵉ-isEquivalence -->
<!--      .reflexive     → proj₁ -->
<!--      .trans         → ⊆-Transitive -->
<!--      where open IsPreorder -->
<!--    ``` -->
  





------------------------
[issue 86]: https://github.com/input-output-hk/formal-ledger-specifications/issues/86
[86-broken-inference]: https://github.com/input-output-hk/formal-ledger-specifications/tree/86-broken-inference
[Axiom/Set]: https://github.com/input-output-hk/formal-ledger-specifications/blob/86-broken-inference/src/Axiom/Set.agda
[Axiom/Set.agda#L89]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set.agda#L89
[Axiom/Set.agda#L92]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set.agda#L92
[Axiom/Set/Properties]: https://github.com/input-output-hk/formal-ledger-specifications/blob/86-broken-inference/src/Axiom/Set/Properties.agda
[Axiom/Set/Properties.agda#L74]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L74
[Axiom/Set/Properties.agda#L88]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L88
[Axiom/Set/Properties.agda#L91]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L91
[Axiom/Set/Properties.agda#L104]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L104
[Axiom/Set/Properties.agda#L119]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L119
[Axiom/Set/Properties.agda#L150]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L150
[Axiom/Set/Properties.agda#L153]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L153
[Axiom/Set/Properties.agda#L160]: https://github.com/input-output-hk/formal-ledger-specifications/blob/3b7fb19a3f9eea2467654ea9adf130f242a8240e/src/Axiom/Set/Properties.agda#L160
