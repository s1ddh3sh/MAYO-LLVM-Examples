## Instructions to use the tool :

### 1. Create build folder, then
```
cd build
cmake .. && make
```
### 2. Run cmd:

```
./mayo_pass ../mayo_IR/mayo1.ll <targetFn>
```

- This generates a `targetFn.ll` which has the `targetFn` function along with a  `main` driver fn having the allocs used.


### 3. The IRs will be generated in the `results/` folder

Each IR can be used as an input to `llvmbmc` tool.

Refer `valid_functions.txt`, for a possible target function cases and subsitute each name in the above `targetFn` to generate its IR. 

### 4. Each generated IR also has a `main` function which is a driver fn for all the allocs needed for the `targetFn`.
So for llvmbmc tool, can use `-f main` for each cases.

<!-- To run for all functions: 
```bash
 while read -r fn; do
    ./mayo_pass ../mayo_IR/mayo1.ll "$fn"
    if [ $? -ne 0 ]; then
        echo "$fn"
    fi
done < ../valid_functions.txt
``` -->

