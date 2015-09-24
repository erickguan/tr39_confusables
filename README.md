# TR39 confusables

This gem implements skeleton algorithm from [Unicode TR39](http://www.unicode.org/reports/tr39/)

### Usages

    require 'tr39_confusables'

    Tr39Confusables.skeleton("𝔭𝒶ỿ𝕡𝕒ℓ")  # "paypal"
    Tr39Confusables.is_confusable?("scope", "scope")  # true

*Note on the use of `Skeleton`, from TR39:*

> A skeleton is intended only for internal use for testing confusability of strings; the resulting text is not suitable for display to users, because it will appear to be a hodgepodge of different scripts. In particular, the result of mapping an identifier will not necessary be an identifier. Thus the confusability mappings can be used to test whether two identifiers are confusable (if their skeletons are the same), but should definitely not be used as a "normalization" of identifiers.
