#!/bin/bash

source /Users/jlee295/.bashrc

#THIS SCRIPT DOES AN RMSD OF THE DNA ALIGNED TO ONLY H4 CORE RESIDUES
#####run1

cd /Users/jlee295/view/H3view/run1

cpptraj <<_EOF
parm H3_1.nowat.prmtop
trajin H3_1.nowat.nc
autoimage
rms run1 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd H3_1DNA :1-294@C1' first nofit out H3_1DNA.dat
run
_EOF

mv H3_1DNA.dat /Users/jlee295/python/H3/RMSD/


cd /Users/jlee295/view/cenpview/run1

cpptraj <<_EOF
parm cenpa_1.nowat.prmtop
trajin cenpa_1.nowat.nc
autoimage
rms run1 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd cenpa_1DNA :1-294@C1' first nofit out cenpa_1DNA.dat
run
_EOF

mv cenpa_1DNA.dat /Users/jlee295/python/cenpa/RMSD/


cd /Users/jlee295/view/ltH3coreview/run1

cpptraj <<_EOF
parm ltH3core_1.nowat.prmtop
trajin ltH3core_1.nowat.nc
autoimage
rms run1 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd ltH3core_1DNA :1-294@C1' first nofit out ltH3core_1DNA.dat
run
_EOF

mv ltH3core_1DNA.dat /Users/jlee295/python/ltH3core/RMSD/


cd /Users/jlee295/view/ltcenpacoreview/run1

cpptraj <<_EOF
parm ltcenpacore_1.nowat.prmtop
trajin ltcenpacore_1.nowat.nc
autoimage
rms run1 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd ltcenpacore_1DNA :1-294@C1' first nofit out ltcenpacore_1DNA.dat
run
_EOF

mv ltcenpacore_1DNA.dat /Users/jlee295/python/ltcenpacore/RMSD/


cd /Users/jlee295/view/exnotailH3view/run1

cpptraj <<_EOF
parm exnotailH3_1.nowat.prmtop
trajin exnotailH3_1.nowat.nc
autoimage
rms run1 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd exnotailH3_1DNA :1-294@C1' first nofit out exnotailH3_1DNA.dat
run
_EOF

mv exnotailH3_1DNA.dat /Users/jlee295/python/exnotailH3/RMSD/


cd /Users/jlee295/view/exnotailcenpaview/run1

cpptraj <<_EOF
parm exnotailcenpa_1.nowat.prmtop
trajin exnotailcenpa_1.nowat.nc
autoimage
rms run1 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd exnotailcenpa_1DNA :1-294@C1' first nofit out exnotailcenpa_1DNA.dat
run
_EOF

mv exnotailcenpa_1DNA.dat /Users/jlee295/python/exnotailcenpa/RMSD/


cd /Users/jlee295/view/CSH3view/run1

cpptraj <<_EOF
parm CSH3_1.nowat.prmtop
trajin CSH3_1.nowat.nc
autoimage
rms run1 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd CSH3_1DNA :1-294@C1' first nofit out CSH3_1DNA.dat
run
_EOF

mv CSH3_1DNA.dat /Users/jlee295/python/CSH3/RMSD/


cd /Users/jlee295/view/CScenpaview/run1

cpptraj <<_EOF
parm CScenpa_1.nowat.prmtop
trajin CScenpa_1.nowat.nc
autoimage
rms run1 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd CScenpa_1DNA :1-294@C1' first nofit out CScenpa_1DNA.dat
run
_EOF

mv CScenpa_1DNA.dat /Users/jlee295/python/CScenpa/RMSD/


cd /Users/jlee295/view/CSltH3coreview/run1

cpptraj <<_EOF
parm CSltH3core_1.nowat.prmtop
trajin CSltH3core_1.nowat.nc
autoimage
rms run1 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd CSltH3core_1DNA :1-294@C1' first nofit out CSltH3core_1DNA.dat
run
_EOF

mv CSltH3core_1DNA.dat /Users/jlee295/python/CSltH3core/RMSD/


cd /Users/jlee295/view/CSltcenpacoreview/run1

cpptraj <<_EOF
parm CSltcenpacore_1.nowat.prmtop
trajin CSltcenpacore_1.nowat.nc
autoimage
rms run1 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd CSltcenpacore_1DNA :1-294@C1' first nofit out CSltcenpacore_1DNA.dat
run
_EOF

mv CSltcenpacore_1DNA.dat /Users/jlee295/python/CSltcenpacore/RMSD/


cd /Users/jlee295/view/CSexnotailH3view/run1

cpptraj <<_EOF
parm CSexnotailH3_1.nowat.prmtop
trajin CSexnotailH3_1.nowat.nc
autoimage
rms run1 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd CSexnotailH3_1DNA :1-294@C1' first nofit out CSexnotailH3_1DNA.dat
run
_EOF

mv CSexnotailH3_1DNA.dat /Users/jlee295/python/CSexnotailH3/RMSD/


cd /Users/jlee295/view/CSexnotailcenpaview/run1

cpptraj <<_EOF
parm CSexnotailcenpa_1.nowat.prmtop
trajin CSexnotailcenpa_1.nowat.nc
autoimage
rms run1 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd CSexnotailcenpa_1DNA :1-294@C1' first nofit out CSexnotailcenpa_1DNA.dat
run
_EOF

mv CSexnotailcenpa_1DNA.dat /Users/jlee295/python/CSexnotailcenpa/RMSD/


#####run2

cd /Users/jlee295/view/H3view/run2

cpptraj <<_EOF
parm H3_2.nowat.prmtop
trajin H3_2.nowat.nc
autoimage
rms run2 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd H3_2DNA :1-294@C1' first nofit out H3_2DNA.dat
run
_EOF

mv H3_2DNA.dat /Users/jlee295/python/H3/RMSD/


cd /Users/jlee295/view/cenpview/run2

cpptraj <<_EOF
parm cenpa_2.nowat.prmtop
trajin cenpa_2.nowat.nc
autoimage
rms run2 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd cenpa_2DNA :1-294@C1' first nofit out cenpa_2DNA.dat
run
_EOF

mv cenpa_2DNA.dat /Users/jlee295/python/cenpa/RMSD/


cd /Users/jlee295/view/ltH3coreview/run2

cpptraj <<_EOF
parm ltH3core_2.nowat.prmtop
trajin ltH3core_2.nowat.nc
autoimage
rms run2 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd ltH3core_2DNA :1-294@C1' first nofit out ltH3core_2DNA.dat
run
_EOF

mv ltH3core_2DNA.dat /Users/jlee295/python/ltH3core/RMSD/


cd /Users/jlee295/view/ltcenpacoreview/run2

cpptraj <<_EOF
parm ltcenpacore_2.nowat.prmtop
trajin ltcenpacore_2.nowat.nc
autoimage
rms run2 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd ltcenpacore_2DNA :1-294@C1' first nofit out ltcenpacore_2DNA.dat
run
_EOF

mv ltcenpacore_2DNA.dat /Users/jlee295/python/ltcenpacore/RMSD/


cd /Users/jlee295/view/exnotailH3view/run2

cpptraj <<_EOF
parm exnotailH3_2.nowat.prmtop
trajin exnotailH3_2.nowat.nc
autoimage
rms run2 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd exnotailH3_2DNA :1-294@C1' first nofit out exnotailH3_2DNA.dat
run
_EOF

mv exnotailH3_2DNA.dat /Users/jlee295/python/exnotailH3/RMSD/


cd /Users/jlee295/view/exnotailcenpaview/run2

cpptraj <<_EOF
parm exnotailcenpa_2.nowat.prmtop
trajin exnotailcenpa_2.nowat.nc
autoimage
rms run2 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd exnotailcenpa_2DNA :1-294@C1' first nofit out exnotailcenpa_2DNA.dat
run
_EOF

mv exnotailcenpa_2DNA.dat /Users/jlee295/python/exnotailcenpa/RMSD/


cd /Users/jlee295/view/CSH3view/run2

cpptraj <<_EOF
parm CSH3_2.nowat.prmtop
trajin CSH3_2.nowat.nc
autoimage
rms run2 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd CSH3_2DNA :1-294@C1' first nofit out CSH3_2DNA.dat
run
_EOF

mv CSH3_2DNA.dat /Users/jlee295/python/CSH3/RMSD/


cd /Users/jlee295/view/CScenpaview/run2

cpptraj <<_EOF
parm CScenpa_2.nowat.prmtop
trajin CScenpa_2.nowat.nc
autoimage
rms run2 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd CScenpa_2DNA :1-294@C1' first nofit out CScenpa_2DNA.dat
run
_EOF

mv CScenpa_2DNA.dat /Users/jlee295/python/CScenpa/RMSD/


cd /Users/jlee295/view/CSltH3coreview/run2

cpptraj <<_EOF
parm CSltH3core_2.nowat.prmtop
trajin CSltH3core_2.nowat.nc
autoimage
rms run2 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd CSltH3core_2DNA :1-294@C1' first nofit out CSltH3core_2DNA.dat
run
_EOF

mv CSltH3core_2DNA.dat /Users/jlee295/python/CSltH3core/RMSD/


cd /Users/jlee295/view/CSltcenpacoreview/run2

cpptraj <<_EOF
parm CSltcenpacore_2.nowat.prmtop
trajin CSltcenpacore_2.nowat.nc
autoimage
rms run2 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd CSltcenpacore_2DNA :1-294@C1' first nofit out CSltcenpacore_2DNA.dat
run
_EOF

mv CSltcenpacore_2DNA.dat /Users/jlee295/python/CSltcenpacore/RMSD/


cd /Users/jlee295/view/CSexnotailH3view/run2

cpptraj <<_EOF
parm CSexnotailH3_2.nowat.prmtop
trajin CSexnotailH3_2.nowat.nc
autoimage
rms run2 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd CSexnotailH3_2DNA :1-294@C1' first nofit out CSexnotailH3_2DNA.dat
run
_EOF

mv CSexnotailH3_2DNA.dat /Users/jlee295/python/CSexnotailH3/RMSD/


cd /Users/jlee295/view/CSexnotailcenpaview/run2

cpptraj <<_EOF
parm CSexnotailcenpa_2.nowat.prmtop
trajin CSexnotailcenpa_2.nowat.nc
autoimage
rms run2 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd CSexnotailcenpa_2DNA :1-294@C1' first nofit out CSexnotailcenpa_2DNA.dat
run
_EOF

mv CSexnotailcenpa_2DNA.dat /Users/jlee295/python/CSexnotailcenpa/RMSD/


#####run3

cd /Users/jlee295/view/H3view/run3

cpptraj <<_EOF
parm H3_3.nowat.prmtop
trajin H3_3.nowat.nc
autoimage
rms run3 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd H3_3DNA :1-294@C1' first nofit out H3_3DNA.dat
run
_EOF

mv H3_3DNA.dat /Users/jlee295/python/H3/RMSD/


cd /Users/jlee295/view/cenpview/run3

cpptraj <<_EOF
parm cenpa_3.nowat.prmtop
trajin cenpa_3.nowat.nc
autoimage
rms run3 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd cenpa_3DNA :1-294@C1' first nofit out cenpa_3DNA.dat
run
_EOF

mv cenpa_3DNA.dat /Users/jlee295/python/cenpa/RMSD/


cd /Users/jlee295/view/ltH3coreview/run3

cpptraj <<_EOF
parm ltH3core_3.nowat.prmtop
trajin ltH3core_3.nowat.nc
autoimage
rms run3 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd ltH3core_3DNA :1-294@C1' first nofit out ltH3core_3DNA.dat
run
_EOF

mv ltH3core_3DNA.dat /Users/jlee295/python/ltH3core/RMSD/


cd /Users/jlee295/view/ltcenpacoreview/run3

cpptraj <<_EOF
parm ltcenpacore_3.nowat.prmtop
trajin ltcenpacore_3.nowat.nc
autoimage
rms run3 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd ltcenpacore_3DNA :1-294@C1' first nofit out ltcenpacore_3DNA.dat
run
_EOF

mv ltcenpacore_3DNA.dat /Users/jlee295/python/ltcenpacore/RMSD/


cd /Users/jlee295/view/exnotailH3view/run3

cpptraj <<_EOF
parm exnotailH3_3.nowat.prmtop
trajin exnotailH3_3.nowat.nc
autoimage
rms run3 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd exnotailH3_3DNA :1-294@C1' first nofit out exnotailH3_3DNA.dat
run
_EOF

mv exnotailH3_3DNA.dat /Users/jlee295/python/exnotailH3/RMSD/


cd /Users/jlee295/view/exnotailcenpaview/run3

cpptraj <<_EOF
parm exnotailcenpa_3.nowat.prmtop
trajin exnotailcenpa_3.nowat.nc
autoimage
rms run3 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd exnotailcenpa_3DNA :1-294@C1' first nofit out exnotailcenpa_3DNA.dat
run
_EOF

mv exnotailcenpa_3DNA.dat /Users/jlee295/python/exnotailcenpa/RMSD/


cd /Users/jlee295/view/CSH3view/run3

cpptraj <<_EOF
parm CSH3_3.nowat.prmtop
trajin CSH3_3.nowat.nc
autoimage
rms run3 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd CSH3_3DNA :1-294@C1' first nofit out CSH3_3DNA.dat
run
_EOF

mv CSH3_3DNA.dat /Users/jlee295/python/CSH3/RMSD/


cd /Users/jlee295/view/CScenpaview/run3

cpptraj <<_EOF
parm CScenpa_3.nowat.prmtop
trajin CScenpa_3.nowat.nc
autoimage
rms run3 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd CScenpa_3DNA :1-294@C1' first nofit out CScenpa_3DNA.dat
run
_EOF

mv CScenpa_3DNA.dat /Users/jlee295/python/CScenpa/RMSD/


cd /Users/jlee295/view/CSltH3coreview/run3

cpptraj <<_EOF
parm CSltH3core_3.nowat.prmtop
trajin CSltH3core_3.nowat.nc
autoimage
rms run3 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd CSltH3core_3DNA :1-294@C1' first nofit out CSltH3core_3DNA.dat
run
_EOF

mv CSltH3core_3DNA.dat /Users/jlee295/python/CSltH3core/RMSD/


cd /Users/jlee295/view/CSltcenpacoreview/run3

cpptraj <<_EOF
parm CSltcenpacore_3.nowat.prmtop
trajin CSltcenpacore_3.nowat.nc
autoimage
rms run3 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd CSltcenpacore_3DNA :1-294@C1' first nofit out CSltcenpacore_3DNA.dat
run
_EOF

mv CSltcenpacore_3DNA.dat /Users/jlee295/python/CSltcenpacore/RMSD/


cd /Users/jlee295/view/CSexnotailH3view/run3

cpptraj <<_EOF
parm CSexnotailH3_3.nowat.prmtop
trajin CSexnotailH3_3.nowat.nc
autoimage
rms run3 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd CSexnotailH3_3DNA :1-294@C1' first nofit out CSexnotailH3_3DNA.dat
run
_EOF

mv CSexnotailH3_3DNA.dat /Users/jlee295/python/CSexnotailH3/RMSD/


cd /Users/jlee295/view/CSexnotailcenpaview/run3

cpptraj <<_EOF
parm CSexnotailcenpa_3.nowat.prmtop
trajin CSexnotailcenpa_3.nowat.nc
autoimage
rms run3 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd CSexnotailcenpa_3DNA :1-294@C1' first nofit out CSexnotailcenpa_3DNA.dat
run
_EOF

mv CSexnotailcenpa_3DNA.dat /Users/jlee295/python/CSexnotailcenpa/RMSD/


#####run4

cd /Users/jlee295/view/H3view/run4

cpptraj <<_EOF
parm H3_4.nowat.prmtop
trajin H3_4.nowat.nc
autoimage
rms run4 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd H3_4DNA :1-294@C1' first nofit out H3_4DNA.dat
run
_EOF

mv H3_4DNA.dat /Users/jlee295/python/H3/RMSD/


cd /Users/jlee295/view/cenpview/run4

cpptraj <<_EOF
parm cenpa_4.nowat.prmtop
trajin cenpa_4.nowat.nc
autoimage
rms run4 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd cenpa_4DNA :1-294@C1' first nofit out cenpa_4DNA.dat
run
_EOF

mv cenpa_4DNA.dat /Users/jlee295/python/cenpa/RMSD/


cd /Users/jlee295/view/ltH3coreview/run4

cpptraj <<_EOF
parm ltH3core_4.nowat.prmtop
trajin ltH3core_4.nowat.nc
autoimage
rms run4 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd ltH3core_4DNA :1-294@C1' first nofit out ltH3core_4DNA.dat
run
_EOF

mv ltH3core_4DNA.dat /Users/jlee295/python/ltH3core/RMSD/


cd /Users/jlee295/view/ltcenpacoreview/run4

cpptraj <<_EOF
parm ltcenpacore_4.nowat.prmtop
trajin ltcenpacore_4.nowat.nc
autoimage
rms run4 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd ltcenpacore_4DNA :1-294@C1' first nofit out ltcenpacore_4DNA.dat
run
_EOF

mv ltcenpacore_4DNA.dat /Users/jlee295/python/ltcenpacore/RMSD/


cd /Users/jlee295/view/exnotailH3view/run4

cpptraj <<_EOF
parm exnotailH3_4.nowat.prmtop
trajin exnotailH3_4.nowat.nc
autoimage
rms run4 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd exnotailH3_4DNA :1-294@C1' first nofit out exnotailH3_4DNA.dat
run
_EOF

mv exnotailH3_4DNA.dat /Users/jlee295/python/exnotailH3/RMSD/


cd /Users/jlee295/view/exnotailcenpaview/run4

cpptraj <<_EOF
parm exnotailcenpa_4.nowat.prmtop
trajin exnotailcenpa_4.nowat.nc
autoimage
rms run4 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd exnotailcenpa_4DNA :1-294@C1' first nofit out exnotailcenpa_4DNA.dat
run
_EOF

mv exnotailcenpa_4DNA.dat /Users/jlee295/python/exnotailcenpa/RMSD/


cd /Users/jlee295/view/CSH3view/run4

cpptraj <<_EOF
parm CSH3_4.nowat.prmtop
trajin CSH3_4.nowat.nc
autoimage
rms run4 :460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA first
rmsd CSH3_4DNA :1-294@C1' first nofit out CSH3_4DNA.dat
run
_EOF

mv CSH3_4DNA.dat /Users/jlee295/python/CSH3/RMSD/


cd /Users/jlee295/view/CScenpaview/run4

cpptraj <<_EOF
parm CScenpa_4.nowat.prmtop
trajin CScenpa_4.nowat.nc
autoimage
rms run4 :464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA first
rmsd CScenpa_4DNA :1-294@C1' first nofit out CScenpa_4DNA.dat
run
_EOF

mv CScenpa_4DNA.dat /Users/jlee295/python/CScenpa/RMSD/


cd /Users/jlee295/view/CSltH3coreview/run4

cpptraj <<_EOF
parm CSltH3core_4.nowat.prmtop
trajin CSltH3core_4.nowat.nc
autoimage
rms run4 :459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA first
rmsd CSltH3core_4DNA :1-294@C1' first nofit out CSltH3core_4DNA.dat
run
_EOF

mv CSltH3core_4DNA.dat /Users/jlee295/python/CSltH3core/RMSD/


cd /Users/jlee295/view/CSltcenpacoreview/run4

cpptraj <<_EOF
parm CSltcenpacore_4.nowat.prmtop
trajin CSltcenpacore_4.nowat.nc
autoimage
rms run4 :465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA first
rmsd CSltcenpacore_4DNA :1-294@C1' first nofit out CSltcenpacore_4DNA.dat
run
_EOF

mv CSltcenpacore_4DNA.dat /Users/jlee295/python/CSltcenpacore/RMSD/


cd /Users/jlee295/view/CSexnotailH3view/run4

cpptraj <<_EOF
parm CSexnotailH3_4.nowat.prmtop
trajin CSexnotailH3_4.nowat.nc
autoimage
rms run4 :416-425@CA:435-460@CA:468-477@CA:863-872@CA:882-907@CA:915-924@CA first
rmsd CSexnotailH3_4DNA :1-294@C1' first nofit out CSexnotailH3_4DNA.dat
run
_EOF

mv CSexnotailH3_4DNA.dat /Users/jlee295/python/CSexnotailH3/RMSD/


cd /Users/jlee295/view/CSexnotailcenpaview/run4

cpptraj <<_EOF
parm CSexnotailcenpa_4.nowat.prmtop
trajin CSexnotailcenpa_4.nowat.nc
autoimage
rms run4 :421-430@CA:440-465@CA:473-482@CA:873-882@CA:892-917@CA:925-934@CA first
rmsd CSexnotailcenpa_4DNA :1-294@C1' first nofit out CSexnotailcenpa_4DNA.dat
run
_EOF

mv CSexnotailcenpa_4DNA.dat /Users/jlee295/python/CSexnotailcenpa/RMSD/
