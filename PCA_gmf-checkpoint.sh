### Algn
$SCHRODINGER/run trj_align.py 187/187_prod_1/187_prod_1-out.cms 187/187_prod_1/187_prod_1_trj/ 187_algn -ref-mae ref-188.mae -asl "backbone"
$SCHRODINGER/run trj_align.py 188/188_v2_merged-out.cms 188/188_v2_merged_trj/ 188_algn -ref-mae ref-188.mae -asl "backbone"
$SCHRODINGER/run trj_align.py 189/189_merged-out.cms 189/189_merged_trj/ 189_algn -ref-mae ref-188.mae -asl "backbone"
$SCHRODINGER/run trj_align.py 190/190_merged-out.cms 190/190_merged_trj/ 190_algn -ref-mae ref-188.mae -asl "backbone"
$SCHRODINGER/run trj_align.py 197/197_merged-out.cms 197/197_merged_trj/ 197_algn -ref-mae ref-188.mae -asl "backbone"
$SCHRODINGER/run trj_align.py 202/202_merged-out.cms 202/202_merged_trj/ 202_algn -ref-mae ref-188.mae -asl "chain A and backbone"


#### Keepao
$SCHRODINGER/run trj_keep_selection_dl.py 187_algn-out.cms 187_algn_trj/ 187_algn_b -asl 'protein and not a.e H and backbone and res 3 - 304'
$SCHRODINGER/run trj_keep_selection_dl.py 188_algn-out.cms 188_algn_trj/ 188_algn_b -asl 'protein and not a.e H and backbone and res 3 - 304'
$SCHRODINGER/run trj_keep_selection_dl.py 189_algn-out.cms 189_algn_trj/ 189_algn_b -asl 'protein and not a.e H and backbone and res 3 - 304'
$SCHRODINGER/run trj_keep_selection_dl.py 190_algn-out.cms 190_algn_trj/ 190_algn_b -asl 'protein and not a.e H and backbone and res 3 - 304'
$SCHRODINGER/run trj_keep_selection_dl.py 197_algn-out.cms 197_algn_trj/ 197_algn_b -asl 'protein and not a.e H and backbone and res 3 - 304'
$SCHRODINGER/run trj_keep_selection_dl.py 202_algn-out.cms 202_algn_trj/ 202_algn_b -asl 'protein and not a.e H and chain A and backbone and res 3 - 304'
#### Merged

 $SCHRODINGER/run trj_merge.py  187_algn_b-out.cms 187_algn_b_trj/ 188_algn_b_trj/ 189_algn_b_trj/ 190_algn_b_trj/ 197_algn_b_trj/ 202_algn_b_trj/ -o PCA-FBPase_full -concat 0 1000


##### PCA

$SCHRODINGER/run trj_essential_dynamics.py PCA_FBPase_full-out.cms PCA_FBPase_full_trj/ PCA_FBPase_full_results -projection -cross-correlation

#### Result

201 frames from trajectory: 187_algn_b_trj/
1005 frames from trajectory: 188_algn_b_trj/
1005 frames from trajectory: 189_algn_b_trj/
1005 frames from trajectory: 190_algn_b_trj/
804 frames from trajectory: 197_algn_b_trj/
1005 frames from trajectory: 202_algn_b_trj/
The resultant trajectory has 5025 frames.


Covariance is calculated using coordinate sets.
  Mode#     Variance    % Motion    Agg. Motion
--------  ----------  ----------  -------------
       1    4969.031      91.171         91.171
       2      67.022       1.230         92.400
       3      57.347       1.052         93.453
       4      31.155       0.572         94.024
       5      29.149       0.535         94.559
       6      25.905       0.475         95.034
       7      21.886       0.402         95.436
       8      16.692       0.306         95.742
       9      15.081       0.277         96.019
      10      12.502       0.229         96.248


