## Instructions to use this code :

### 1. Create build folder, then
```
cd build
cmake .. && make
```
### 2. Run cmd:

1. Create a `results/` folder in the repo.
2. Run the cmd to generate the function IR :
```
./mayo_pass ../mayo_IR/mayo1.ll <targetFn>
```

3. This generates a `targetFn.ll` which has the `targetFn` function IR.


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

<!-- Run faults for each fn:
./run_fault.sh add_f compute_A compute_M_and_VPV compute_P3 compute_rhs lincomb m_vec_add m_vec_mul_add mat_add mat_mul mul_add_m_upper_triangular_mat_x_mat_trans mul_add_m_upper_triangular_mat_x_mat mul_add_mat_trans_x_m_mat mul_add_mat_x_m_mat mul_f P1_times_O P1_times_Vt P1P1t_times_O pqmayo_MAYO_1_ref_mayo_expand_sk pqmayo_MAYO_1_ref_mayo_keypair_compact pqmayo_MAYO_1_ref_mayo_sign_signature sub_f

Error :
P1_times_O P1_times_Vt P1P1t_times_O 
pqmayo_MAYO_1_ref_mayo_expand_sk pqmayo_MAYO_1_ref_mayo_keypair_compact
pqmayo_MAYO_1_ref_mayo_sign_signature -->