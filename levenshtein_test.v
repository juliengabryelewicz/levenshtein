import levenshtein


fn test_minimum() {
    assert levenshtein.minimum(1,2,3) == 1
    assert levenshtein.minimum(2,1,3) == 1
    assert levenshtein.minimum(3,2,1) == 1
    assert levenshtein.minimum(2,2,3) == 2
    assert levenshtein.minimum(3,2,2) == 2
}

fn test_levenshtein() {
    assert levenshtein.calculate("voiture","voilure") == 1
    assert levenshtein.calculate("danger","dangereux") == 3
    assert levenshtein.calculate("astronome","astronaute") == 3
    assert levenshtein.calculate("boum","bim") == 2
}