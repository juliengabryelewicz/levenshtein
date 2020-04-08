module levenshtein

pub fn calculate(s1 string, s2 string) int {
    s1len := s1.len
    s2len := s2.len
    column := initializecolumn(s1len)

    for x := 1; x <= s2len; x++ {
        column[0] = x
        previouskey := x - 1
        for y := 1; y <= s1len; y++ {
            key := column[y]
            increment := 0
            if s1[y-1] != s2[x-1] {
                increment = 1
            }
            column[y] = minimum(column[y]+1, column[y-1]+1, previouskey+increment)
            previouskey = key
        }
    }
    return column[s1len]
}

fn initializecolumn(length int) []int{
	arrayint := [0].repeat(length+1)
	for x := 1; x <= length; x++ {
        arrayint[x] = x
    }
    return arrayint
}
 
fn minimum(x int, y int, z int) int {
    if x < y && x < z {
        return x
    } else if y < z {
    	return y
    }
    return z
}