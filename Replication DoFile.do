

clear 
set more off
//Data Locations

global topdir "D:/Data/DemingRep" //Replace with directory here
local cleandir "${topdir}/Data/census-acs/clean"
local occdir "${topdir}/Data/census-acs/xwalk_occ"
local inddir "${topdir}/Data/census-acs/xwalk_ind"
local onetdir "${topdir}/Data/onet"
local afqtadj "${topdir}/Data/nlsy/altonjietal2012"
local txtdir "${topdir}/Data/onet/text_files"



//Step I: ONET
//Step 1A: Collect ONET Data from Text files Derived from Access Database

** Ability Variables

import delimited "`txtdir'/Ability.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	A01IM00M
rename	v3	A01LV00M
rename	v4	A02IM00M
rename	v5	A02LV00M
rename	v6	A03IM00M
rename	v7	A03LV00M
rename	v8	A04IM00M
rename	v9	A04LV00M
rename	v10	A05IM00M
rename	v11	A05LV00M
rename	v12	A06IM00M
rename	v13	A06LV00M
rename	v14	A07IM00M
rename	v15	A07LV00M
rename	v16	A08IM00M
rename	v17	A08LV00M
rename	v18	A09IM00M
rename	v19	A09LV00M
rename	v20	A10IM00M
rename	v21	A10LV00M
rename	v22	A11IM00M
rename	v23	A11LV00M
rename	v24	A12IM00M
rename	v25	A12LV00M
rename	v26	A13IM00M
rename	v27	A13LV00M
rename	v28	A14IM00M
rename	v29	A14LV00M
rename	v30	A15IM00M
rename	v31	A15LV00M
rename	v32	A16IM00M
rename	v33	A16LV00M
rename	v34	A17IM00M
rename	v35	A17LV00M
rename	v36	A18IM00M
rename	v37	A18LV00M
rename	v38	A19IM00M
rename	v39	A19LV00M
rename	v40	A20IM00M
rename	v41	A20LV00M
rename	v42	A21IM00M
rename	v43	A21LV00M
rename	v44	A22IM00M
rename	v45	A22LV00M
rename	v46	A23IM00M
rename	v47	A23LV00M
rename	v48	A24IM00M
rename	v49	A24LV00M
rename	v50	A25IM00M
rename	v51	A25LV00M
rename	v52	A26IM00M
rename	v53	A26LV00M
rename	v54	A27IM00M
rename	v55	A27LV00M
rename	v56	A28IM00M
rename	v57	A28LV00M
rename	v58	A29IM00M
rename	v59	A29LV00M
rename	v60	A30IM00M
rename	v61	A30LV00M
rename	v62	A31IM00M
rename	v63	A31LV00M
rename	v64	A32IM00M
rename	v65	A32LV00M
rename	v66	A33IM00M
rename	v67	A33LV00M
rename	v68	A34IM00M
rename	v69	A34LV00M
rename	v70	A35IM00M
rename	v71	A35LV00M
rename	v72	A36IM00M
rename	v73	A36LV00M
rename	v74	A37IM00M
rename	v75	A37LV00M
rename	v76	A38IM00M
rename	v77	A38LV00M
rename	v78	A39IM00M
rename	v79	A39LV00M
rename	v80	A40IM00M
rename	v81	A40LV00M
rename	v82	A41IM00M
rename	v83	A41LV00M
rename	v84	A42IM00M
rename	v85	A42LV00M
rename	v86	A43IM00M
rename	v87	A43LV00M
rename	v88	A44IM00M
rename	v89	A44LV00M
rename	v90	A45IM00M
rename	v91	A45LV00M
rename	v92	A46IM00M
rename	v93	A46LV00M
rename	v94	A47IM00M
rename	v95	A47LV00M
rename	v96	A48IM00M
rename	v97	A48LV00M
rename	v98	A49IM00M
rename	v99	A49LV00M
rename	v100	A50IM00M
rename	v101	A50LV00M
rename	v102	A51IM00M
rename	v103	A51LV00M
rename	v104	A52IM00M
rename	v105	A52LV00M

save "`onetdir'/onet1998.dta", replace

** Interests Variables

import delimited "`txtdir'/Interest.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	I01OI00M
rename	v3	I02OI00M
rename	v4	I03OI00M
rename	v5	I04OI00M
rename	v6	I05OI00M
rename	v7	I06OI00M
rename	v8	I07IH00H
rename	v9	I08IH00H
rename	v10	I09IH00H

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Knowledge Variables

import delimited "`txtdir'/Knowledge.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	K01IM00M
rename	v3	K01LV00M
rename	v4	K02IM00M
rename	v5	K02LV00M
rename	v6	K03IM00M
rename	v7	K03LV00M
rename	v8	K04IM00M
rename	v9	K04LV00M
rename	v10	K05IM00M
rename	v11	K05LV00M
rename	v12	K06IM00M
rename	v13	K06LV00M
rename	v14	K07IM00M
rename	v15	K07LV00M
rename	v16	K08IM00M
rename	v17	K08LV00M
rename	v18	K09IM00M
rename	v19	K09LV00M
rename	v20	K10IM00M
rename	v21	K10LV00M
rename	v22	K11IM00M
rename	v23	K11LV00M
rename	v24	K12IM00M
rename	v25	K12LV00M
rename	v26	K13IM00M
rename	v27	K13LV00M
rename	v28	K14IM00M
rename	v29	K14LV00M
rename	v30	K15IM00M
rename	v31	K15LV00M
rename	v32	K16IM00M
rename	v33	K16LV00M
rename	v34	K17IM00M
rename	v35	K17LV00M
rename	v36	K18IM00M
rename	v37	K18LV00M
rename	v38	K19IM00M
rename	v39	K19LV00M
rename	v40	K20IM00M
rename	v41	K20LV00M
rename	v42	K21IM00M
rename	v43	K21LV00M
rename	v44	K22IM00M
rename	v45	K22LV00M
rename	v46	K23IM00M
rename	v47	K23LV00M
rename	v48	K24IM00M
rename	v49	K24LV00M
rename	v50	K25IM00M
rename	v51	K25LV00M
rename	v52	K26IM00M
rename	v53	K26LV00M
rename	v54	K27IM00M
rename	v55	K27LV00M
rename	v56	K28IM00M
rename	v57	K28LV00M
rename	v58	K29IM00M
rename	v59	K29LV00M
rename	v60	K30IM00M
rename	v61	K30LV00M
rename	v62	K31IM00M
rename	v63	K31LV00M
rename	v64	K32IM00M
rename	v65	K32LV00M
rename	v66	K33IM00M
rename	v67	K33LV00M

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Skills Variables

import delimited "`txtdir'/Skills.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	B01IM00M
rename	v3	B01LV00M
rename	v4	B02IM00M
rename	v5	B02LV00M
rename	v6	B03IM00M
rename	v7	B03LV00M
rename	v8	B04IM00M
rename	v9	B04LV00M
rename	v10	B05IM00M
rename	v11	B05LV00M
rename	v12	B06IM00M
rename	v13	B06LV00M
rename	v14	B07IM00M
rename	v15	B07LV00M
rename	v16	B08IM00M
rename	v17	B08LV00M
rename	v18	B09IM00M
rename	v19	B09LV00M
rename	v20	B10IM00M
rename	v21	B10LV00M
rename	v22	C01IM00M
rename	v23	C01LV00M
rename	v24	C02IM00M
rename	v25	C02LV00M
rename	v26	C03IM00M
rename	v27	C03LV00M
rename	v28	C04IM00M
rename	v29	C04LV00M
rename	v30	C05IM00M
rename	v31	C05LV00M
rename	v32	C06IM00M
rename	v33	C06LV00M
rename	v34	C07IM00M
rename	v35	C07LV00M
rename	v36	C08IM00M
rename	v37	C08LV00M
rename	v38	C09IM00M
rename	v39	C09LV00M
rename	v40	C10IM00M
rename	v41	C10LV00M
rename	v42	C11IM00M
rename	v43	C11LV00M
rename	v44	C12IM00M
rename	v45	C12LV00M
rename	v46	C13IM00M
rename	v47	C13LV00M
rename	v48	C14IM00M
rename	v49	C14LV00M
rename	v50	C15IM00M
rename	v51	C15LV00M
rename	v52	C16IM00M
rename	v53	C16LV00M
rename	v54	C17IM00M
rename	v55	C17LV00M
rename	v56	C18IM00M
rename	v57	C18LV00M
rename	v58	C19IM00M
rename	v59	C19LV00M
rename	v60	C20IM00M
rename	v61	C20LV00M
rename	v62	C21IM00M
rename	v63	C21LV00M
rename	v64	C22IM00M
rename	v65	C22LV00M
rename	v66	C23IM00M
rename	v67	C23LV00M
rename	v68	C24IM00M
rename	v69	C24LV00M
rename	v70	C25IM00M
rename	v71	C25LV00M
rename	v72	C26IM00M
rename	v73	C26LV00M
rename	v74	C27IM00M
rename	v75	C27LV00M
rename	v76	C28IM00M
rename	v77	C28LV00M
rename	v78	C29IM00M
rename	v79	C29LV00M
rename	v80	C30IM00M
rename	v81	C30LV00M
rename	v82	C31IM00M
rename	v83	C31LV00M
rename	v84	C32IM00M
rename	v85	C32LV00M
rename	v86	C33IM00M
rename	v87	C33LV00M
rename	v88	C34IM00M
rename	v89	C34LV00M
rename	v90	C35IM00M
rename	v91	C35LV00M
rename	v92	C36IM00M
rename	v93	C36LV00M

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Work Activity Variables

import delimited "`txtdir'/WorkActivity.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	G01FG00M
rename	v3	G01IM00M
rename	v4	G01LV00M
rename	v5	G02FG00M
rename	v6	G02IM00M
rename	v7	G02LV00M
rename	v8	G03FG00M
rename	v9	G03IM00M
rename	v10	G03LV00M
rename	v11	G04FG00M
rename	v12	G04IM00M
rename	v13	G04LV00M
rename	v14	G05FG00M
rename	v15	G05IM00M
rename	v16	G05LV00M
rename	v17	G06FG00M
rename	v18	G06IM00M
rename	v19	G06LV00M
rename	v20	G07FG00M
rename	v21	G07IM00M
rename	v22	G07LV00M
rename	v23	G08FG00M
rename	v24	G08IM00M
rename	v25	G08LV00M
rename	v26	G09FG00M
rename	v27	G09IM00M
rename	v28	G09LV00M
rename	v29	G10FG00M
rename	v30	G10IM00M
rename	v31	G10LV00M
rename	v32	G11FG00M
rename	v33	G11IM00M
rename	v34	G11LV00M
rename	v35	G12FG00M
rename	v36	G12IM00M
rename	v37	G12LV00M
rename	v38	G13FG00M
rename	v39	G13IM00M
rename	v40	G13LV00M
rename	v41	G14FG00M
rename	v42	G14IM00M
rename	v43	G14LV00M
rename	v44	G15FG00M
rename	v45	G15IM00M
rename	v46	G15LV00M
rename	v47	G16FG00M
rename	v48	G16IM00M
rename	v49	G16LV00M
rename	v50	G17FG00M
rename	v51	G17IM00M
rename	v52	G17LV00M
rename	v53	G18FG00M
rename	v54	G18IM00M
rename	v55	G18LV00M
rename	v56	G19FG00M
rename	v57	G19IM00M
rename	v58	G19LV00M
rename	v59	G20FG00M
rename	v60	G20IM00M
rename	v61	G20LV00M
rename	v62	G21FG00M
rename	v63	G21IM00M
rename	v64	G21LV00M
rename	v65	G22FG00M
rename	v66	G22IM00M
rename	v67	G22LV00M
rename	v68	G23FG00M
rename	v69	G23IM00M
rename	v70	G23LV00M
rename	v71	G24FG00M
rename	v72	G24IM00M
rename	v73	G24LV00M
rename	v74	G25FG00M
rename	v75	G25IM00M
rename	v76	G25LV00M
rename	v77	G26FG00M
rename	v78	G26IM00M
rename	v79	G26LV00M
rename	v80	G27FG00M
rename	v81	G27IM00M
rename	v82	G27LV00M
rename	v83	G28FG00M
rename	v84	G28IM00M
rename	v85	G28LV00M
rename	v86	G29FG00M
rename	v87	G29IM00M
rename	v88	G29LV00M
rename	v89	G30FG00M
rename	v90	G30IM00M
rename	v91	G30LV00M
rename	v92	G31FG00M
rename	v93	G31IM00M
rename	v94	G31LV00M
rename	v95	G32FG00M
rename	v96	G32IM00M
rename	v97	G32LV00M
rename	v98	G33FG00M
rename	v99	G33IM00M
rename	v100	G33LV00M
rename	v101	G34FG00M
rename	v102	G34IM00M
rename	v103	G34LV00M
rename	v104	G35FG00M
rename	v105	G35IM00M
rename	v106	G35LV00M
rename	v107	G36FG00M
rename	v108	G36IM00M
rename	v109	G36LV00M
rename	v110	G37FG00M
rename	v111	G37IM00M
rename	v112	G37LV00M
rename	v113	G38FG00M
rename	v114	G38IM00M
rename	v115	G38LV00M
rename	v116	G39FG00M
rename	v117	G39IM00M
rename	v118	G39LV00M
rename	v119	G40FG00M
rename	v120	G40IM00M
rename	v121	G40LV00M
rename	v122	G41FG00M
rename	v123	G41IM00M
rename	v124	G41LV00M
rename	v125	G42FG00M
rename	v126	G42IM00M
rename	v127	G42LV00M

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Work Context Variables

import delimited "`txtdir'/WorkContext.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	W13OS00M
rename	v3	W14CN00M
rename	v4	W16IJ00M
rename	v5	W17IJ00M
rename	v6	W18IJ00M
rename	v7	W19IJ00M
rename	v8	W21IJ00M
rename	v9	W22IJ00M
rename	v10	W23HS00M
rename	v11	W24RE00M
rename	v12	W25CF00M
rename	v13	W26CF00M
rename	v14	W27CF00M
rename	v15	W36FN00M
rename	v16	W37FN00M
rename	v17	W38FN00M
rename	v18	W39FN00M
rename	v19	W40FN00M
rename	v20	W41FN00M
rename	v21	W42DI00M
rename	v22	W42FN00M
rename	v23	W42LI00M
rename	v24	W43DI00M
rename	v25	W43FN00M
rename	v26	W43LI00M
rename	v27	W44DI00M
rename	v28	W44FN00M
rename	v29	W44LI00M
rename	v30	W45DI00M
rename	v31	W45FN00M
rename	v32	W45LI00M
rename	v33	W46DI00M
rename	v34	W46FN00M
rename	v35	W46LI00M
rename	v36	W47DI00M
rename	v37	W47FN00M
rename	v38	W47LI00M
rename	v39	W60FN00M
rename	v40	W61FN00M
rename	v41	W62FN00M
rename	v42	W63FN00M
rename	v43	W64FN00M
rename	v44	W65FN00M
rename	v45	W66FN00M
rename	v46	W67FN00M
rename	v47	W68FN00M
rename	v48	W70FN00M
rename	v49	W72FN00M
rename	v50	W73FN00M
rename	v51	W74SR00M
rename	v52	W79FC00M
rename	v53	W80AO00M
rename	v54	W82IJ00M
rename	v55	W83IJ00M
rename	v56	W84IJ00M
rename	v57	W85IJ00M
rename	v58	W90IJ00M
rename	v59	W98FN00M
rename	v60	W99FN00M

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Work Value Variables

import delimited "`txtdir'/WorkValue.txt", clear delimiter(comma)

rename	v1	onet98code
rename	v2	VAGEN01M
rename	v3	VAGEN02M
rename	v4	VAGEN03M
rename	v5	VAGEN04M
rename	v6	VAGEN05M
rename	v7	VAGEN06M
rename	v8	V01EN00M
rename	v9	V02EN00M
rename	v10	V03EN00M
rename	v11	V04EN00M
rename	v12	V05EN00M
rename	v13	V06EN00M
rename	v14	V07EN00M
rename	v15	V08EN00M
rename	v16	V09EN00M
rename	v17	V10EN00M
rename	v18	V11EN00M
rename	v19	V12EN00M
rename	v20	V13EN00M
rename	v21	V14EN00M
rename	v22	V15EN00M
rename	v23	V16EN00M
rename	v24	V17EN00M
rename	v25	V18EN00M
rename	v26	V19EN00M
rename	v27	V20EN00M
rename	v28	V21EN00M

merge 1:1 onet98code using "`onetdir'/onet1998.dta", keep(match) nogen
save "`onetdir'/onet1998.dta", replace

** Change variable numbers to lower case
tolower VAGEN01M-A52LV00M
sort onet98code

** Restrict to Selected Variables

keep a12lv00m k14lv00m b05lv00m w85ij00m w80ao00m c01lv00m c02lv00m c03lv00m c04lv00m g30lv00m c06lv00m w14cn00m w21ij00m a02lv00m a08lv00m a09lv00m a13lv00m g01lv00m g02lv00m g08lv00m g09lv00m g34lv00m g35lv00m g26lv00m g27lv00m g28lv00m g29lv00m onet98code

//Step 1B: Standardise variables, add them to create scores, restandardise

** Transform scale of variables to 0-10	
foreach var in a12lv00m k14lv00m b05lv00m w85ij00m w80ao00m c01lv00m c02lv00m c03lv00m c04lv00m g30lv00m c06lv00m w14cn00m w21ij00m a02lv00m a08lv00m a09lv00m a13lv00m g01lv00m g02lv00m g08lv00m g09lv00m g34lv00m g35lv00m g26lv00m g27lv00m	g28lv00m g29lv00m {
	sum `var', meanonly
	replace `var'=`var'-r(min)
	sum `var', meanonly
	replace `var'=`var'/r(max)
	replace `var'=`var'*10
}

** Create aggregates
	
* NonRoutine Analytical/ Maths Skills
egen math_onet1998=rowmean(a12lv00m k14lv00m b05lv00m)


* Routineness and Automation/ Routine Skills
egen routine_onet1998=rowmean(w80ao00m w85ij00m)

* Social skills
egen socskills_onet1998=rowmean(c01lv00m c02lv00m c03lv00m c04lv00m)

* Require social interaction
rename w14cn00m require_social_onet1998

* Reason
egen reason_onet1998=rowmean(a02lv00m a08lv00m a09lv00m)

* Number facility
rename a13lv00m number_facility_onet1998

* Service
egen service_onet1998=rowmean(g30lv00m c06lv00m)
gen customer_onet1998=w21ij00m

* Information use
egen info_use_onet1998=rowmean(g01lv00m g02lv00m g08lv00m g09lv00m)

* Coordinate
egen coord_onet1998=rowmean(g34lv00m g35lv00m)

* Interact
egen interact_onet1998=rowmean(g26lv00m g27lv00m g28lv00m g29lv00m)


//Rename Variables for Later Possible Use
rename w80ao00m automationLevel
rename w85ij00m automationRepetition
rename a12lv00m mathReasoning
rename k14lv00m mathLevel
rename b05lv00m mathUse
rename c01lv00m socialPerceptiveness
rename c02lv00m socialCoordination
rename c03lv00m socialPersuasion
rename c04lv00m socialNegotiation


** Rescale Aggregated Scores
foreach var in require_social_onet1998 number_facility_onet1998 math_onet1998 routine_onet1998 socskills_onet1998 service_onet1998 customer_onet1998 reason_onet1998 info_use_onet1998 coord_onet1998 interact_onet1998 {
	sum `var', meanonly
	replace `var'=`var'-r(min)
	sum `var', meanonly
	replace `var'=`var'/r(max)
	replace `var'=`var'*10
}

** Save data
save "`onetdir'/onet1998.dta", replace

//Step 1C: Crosswalks to Census Occupations - adopted from Original Paper

* ONET 1998 to Census 1990 Occupation crosswalk
import delimited "`txtdir'/Crosswalk.txt", clear delimiter(comma)
keep if v1=="CEN"
drop v1
rename v2 onet98code
rename v3 occ90
save "`onetdir'/onet98_occ90_xwalk.dta", replace

* Merge ONET 1998 and occ90 crosswalk
use "`onetdir'/onet1998.dta", clear
merge 1:m onet98code using "`onetdir'/onet98_occ90_xwalk.dta", keep(match) nogen

* Collapse by occ90
collapse (mean) require_social_onet1998-interact_onet1998, by(occ90)

* Merge in occ90 to occ1990dd crosswalk
rename occ90 occ
merge 1:1 occ using "`occdir'/occ1990_occ1990dd_update.dta", keep(match) nogen

* Collapse by occ1990dd
collapse (mean) require_social_onet1998-interact_onet1998, by(occ1990dd)

* Re-scale again to 0-10
foreach var of varlist require_social_onet1998-interact_onet1998 {
	sum `var', meanonly
	replace `var'=`var'-r(min)
	sum `var', meanonly
	replace `var'=`var'/r(max)
	replace `var'=`var'*10
}

* Save data
save "`onetdir'/onet98_occ1990dd.dta", replace

** Crosswalk between Occ70 and Occ1990dd

* To merge in ONET tasks at occ1990dd level to NLSY data in 1979-1981,
*	which uses occ70 codes, need this crosswalk

use "`occdir'/occ70-80cw.dta", clear
rename occ80 occ
merge m:1 occ using "`occdir'/occ1980_occ1990dd_update.dta", keep(match) nogen
drop occ
save "`occdir'/occ1970_occ1990dd.dta", replace



//Step 1D: Data is weighted by the 1980 census to convert ONET variables in percentiles

* Use 1980 Census data
use "`cleandir'/1980.dta", clear

* Drop occupations with no ONET data
drop if onetmerge==1

* Collapse ONET variables by occ1990dd
collapse (rawsum) lswt (mean) require_social_onet1998-interact_onet1998, by(occ1990dd)


* Turn ONET variables into percentiles weighted by 1980 labor supply
foreach var of varlist require_social_onet1998-interact_onet1998 {
	xtile `var'_pct=`var' [aw=lswt], nq(100)
	replace `var'_pct=`var'_pct/10
	drop `var'
}	

save "`onetdir'/onet98_occ1990dd_pct.dta", replace


//Step 2: Import and Prepare NLSY Data

//Step 2A: Import Data
//import NLSY79 data
import delimited "${topdir}/Data/nlsy/SocSkillsNLSY79.csv", case(preserve) clear

//Run the data processing do-file provided by the NLSY extract//
do "${topdir}/Data/nlsy/SocSkillsNLSY79-value-labels.do"
//convert variables to lowercase
tolower

//Convert all negative values of variables to missing
foreach var of varlist _all{
	replace `var' =. if `var' <0 
}

//Step 2B: Creating the control variables


//Sex

gen sex= sample_sex_1979

//Race
gen race= sample_race_78scrn

//Education
egen educ=rowmax(hgcrev*)

//Employment - DD uses No of Jobs since Last Interview measure
forvalues year=1979(1)1994 {
	gen emp`year' =.
	replace emp`year'=0 if lastint_jobs_`year'_xrnd==0
	replace emp`year'=1 if lastint_jobs_`year'_xrnd>0
}
forvalues year=1996(2)2012 {
	gen emp`year' =.
	replace emp`year'=0 if lastint_jobs_`year'_xrnd==0
	replace emp`year'=1 if lastint_jobs_`year'_xrnd>0

}

//Age and Urbanacity

forvalues year=1979(1)1994{

gen urban`year'=urban_rural_`year'
gen metro`year'= smsares_`year'
gen area`year'= region_`year'

//Age
local z= `year'-1979
gen age`year'= fam_1b_1979+ `z'
}
forvalues year=1996(2)2012{

gen urban`year'=urban_rural_`year'
gen metro`year'= smsares_`year'
gen area`year'= region_`year'

//Age
local z= `year'-1979
gen age`year'= age1979+ `z'
}



//Hourly Wages
forvalues year=1979(1)1994 {
	gen wage`year'=.
	local yr= mod(`year',100)
	replace wage`year' = cpshrp_`year'/100 if enrollmtrev`yr'_`year'==1 | enrollmtrev`yr'_`year'==4
}
forvalues year=1996(2)1998 {
	gen wage`year'=.
	local yr= mod(`year',100)
	replace wage`year' =hrp1_`year'/100 if enrollmtrev`yr'_`year'==1 |  enrollmtrev`yr'_`year'==4
}

forvalues year=0(2)6{
	gen wage200`year'=.
	replace wage200`year' =hrp1_200`year'/100 if enrollmtrev0`year'_200`year'==1 |  enrollmtrev0`year'_200`year'==4

}

//Step 2C: Create Measures of Social Skills-  Aggregates four kinds of variables


//Sociability - 1981 and age 6
gen social_age6=health_soc_1_1985
gen social_adult=health_soc_2_1985

//School Clubs Participation- no. of clubs and high school sports

gen youth_org=school_46_000001_1984
gen hobby=school_46_000002_1984
gen stugov=school_46_000003_1984
gen newsp=school_46_000004_1984
gen athletics=school_46_000005_1984
gen perfarts=school_46_000006_1984

//Convert them to categorical variables and then add to get the total participation in school clubs
gen youth_org_cat=0
replace youth_org_cat=1 if youth_org!=.
gen hobby_cat=0
replace hobby_cat=1 if hobby!=.
gen stugov_cat=0
replace stugov_cat=1 if stugov!=.
gen newsp_cat=0
replace newsp_cat=1 if newsp!=.
gen athletics_cat=0
replace athletics_cat=1 if athletics!=.
gen perfarts_cat=0
replace perfarts_cat=1 if perfarts!=.

gen num_clubs= youth_org_cat + hobby_cat+ stugov_cat+ newsp_cat+ athletics_cat+ perfarts_cat

foreach x of varlist social_age6 social_adult num_clubs athletics_cat {
	egen `x'_std=std(`x'), mean(0) std(1)
}

//Now generate mean scores and standardise it 
egen soc_nlsy=rowmean(social_age6_std social_adult_std athletics_cat_std num_clubs_std)
egen soc_nlsy_std=std(soc_nlsy), mean(0) std(1)

gen soc_nlsy2=(social_age6_std+social_adult_std+athletics_cat_std+num_clubs_std)/6
egen soc_nlsy2_std=std(soc_nlsy), mean(0) std(1)

//Non Cognitive Skills Measure: Rotter Score and Rosenberg Score
egen rotter_std=std(rotter_score_1979), mean(0) std(1)
replace rotter_std=-rotter_std //to match direction
egen rosen_std=std(rosenberg_score_1980), mean(0) std(1)
gen noncog=rotter_std +rosen_std
egen noncog_std=std(noncog), mean(0) std(1)

//Generate a  delta wage variable (for extension)
forvalues y=1979(1)1993 {

local z=`y'+1
gen change_wage`y'= wage`z'-wage`y'
gen delta_wage`y'= (change_wage`y'*100)/wage`y'
}

forvalues y=1994(2)2004 {

local z=`y'+2
gen change_wage`y'= wage`z'-wage`y'
gen delta_wage`y'= (change_wage`y'*100)/wage`y'
}


//Step 2D: Use Crosswalk to Get Occupation Codes - adopted from Original Paper
** Using Crosswalk to get Occupation Codes

* Remove extra digit for occ codes beginning in 2004
forvalues year=2004(2)2012 {
	rename occall_emp_01_`year' occall_temp
	gen occall_emp_01_`year'=substr(string(occall_temp), 1, length(string(occall_temp))-1)
	destring occall_emp_01_`year', replace
	drop occall_temp
	}
local occdir "${topdir}/Data/census-acs/xwalk_occ"
* Years 1979-1981: occ70
forvalues y=1979(1)1981 {
	
	gen occ70= cpsocc70_`y' 
	local occdir "${topdir}/Data/census-acs/xwalk_occ"
	merge m:1 occ70 using "`occdir'/occ1970_occ1990dd.dta", keep(master match) nogen
	display "Occupations not matched to occ1990dd: `y'"
	levelsof occ70 if occ1990dd==.
	rename occ70 occ`y'
	rename occ1990dd occ1990dd`y'
}

* Years 1982-2000: occ80
forvalues y=1982(1)1994 {
	gen occ= cpsocc80_`y' 
	merge m:1 occ using "`occdir'/occ1980_occ1990dd_update.dta", ///
		keep(master match) nogen
	display "Occupations not matched to occ1990dd: `y'"
	levelsof occ if occ1990dd==.
	rename occ occ`y'
	rename occ1990dd occ1990dd`y'
}
rename cpsocc80_01_2000 cpsocc80_2000
forvalues y=1996(2)2000 {
	gen occ= cpsocc80_`y' 
	merge m:1 occ using "`occdir'/occ1980_occ1990dd_update.dta", ///
		keep(master match) nogen
	display "Occupations not matched to occ1990dd: `y'"
	levelsof occ if occ1990dd==.
	rename occ occ`y'
	rename occ1990dd occ1990dd`y'	
}

* Years 2002-2012: occ2000
forvalues y=2002(2)2012 {
	gen occ= occall_emp_01_`y' 
	merge m:1 occ using "`occdir'/occ2000_occ1990dd_update.dta", ///
		keep(master match) nogen
	display "Occupations not matched to occ1990dd: `y'"
	levelsof occ if occ1990dd==.
	rename occ occ`y'
	rename occ1990dd occ1990dd`y'	
}

** Industry: Apply ind6090 crosswalk

* Years 1979-1981: ind70
forvalues y=1979(1)1981 {
	rename cpsind70_`y' ind70
	merge m:1 ind70 using "`inddir'/ind70.dta", keep(master match) nogen ///
		keepusing(ind70 ind6090)
	display "Industries not matched to ind6090: `y'"
	levelsof ind70 if ind6090==.
	rename ind70 ind`y'
	rename ind6090 ind6090`y'
}

* Years 1982-2000: ind80
forvalues y=1982(1)1994 {
	rename cpsind80_`y' ind80
	merge m:1 ind80 using "`inddir'/ind80.dta", keep(master match) nogen ///
		keepusing(ind80 ind6090)
	display "Industries not matched to ind6090: `y'"
	levelsof ind80 if ind6090==.
	rename ind80 ind`y'
	rename ind6090 ind6090`y'
}
rename cpsind80_01_2000 cpsind80_2000
forvalues y=1996(2)2000 {
	rename cpsind80_`y' ind80
	merge m:1 ind80 using "`inddir'/ind80.dta", keep(master match) nogen ///
		keepusing(ind80 ind6090)
	display "Industries not matched to ind6090: `y'"
	levelsof ind80 if ind6090==.
	rename ind80 ind`y'
	rename ind6090 ind6090`y'
}

* Years 2002-2012: ind00
forvalues y=2002(2)2012 {
	rename indall_emp_01_`y' ind00
	if `y'==2004 | `y'==2006 | `y'==2008 | `y'==2010 | `y'==2012 {
		replace ind00=floor(ind00/10)
	}
	merge m:1 ind00 using "`inddir'/ind00.dta", keep(master match) nogen
	display "Industries not matched to ind6090: `y'"
	levelsof ind00 if ind6090==.
	rename ind00 ind`y'
	rename ind6090 ind6090`y'
	
	}
//Step 2E: Restrict data and create panel

keep caseid_1979 race sex age* urban1979-urban2012 area* metro* educ emp* wage* occ* ind* soc_nlsy_std  rotter_std rosen_std noncog_std change_wage* delta_wage*


** Reshape data long for main analysis

reshape long age urban area metro emp wage change_wage delta_wage occ occ1990dd ind ind6090, i(caseid_1979) j(year)

//Step 2F: Add Altonji et al (2009) Score for cognitive scores - using only the 79 sample
gen sample =0
egen uniqueID=group(caseid_1979 sample)

** Person ID
gen pid = caseid_1979
rename age age_temp
merge m:1 pid sample using "${topdir}/Data/nlsy/altonjietal2012/afqt_adjusted_final.dta", keep(master match)	keepusing(age weight pafqt afqt_std) nogen
rename age age_test
rename age_temp age
rename afqt_std afqt
egen afqt_std=std(afqt), mean(0) std(1)
drop pid


//Step 2G: Clean up Income Level Data

* Inflate to 2013 wages
replace wage=wage*3.21 if year==1979
replace wage=wage*2.83 if year==1980
replace wage=wage*2.56 if year==1981
replace wage=wage*2.41 if year==1982
replace wage=wage*2.34 if year==1983
replace wage=wage*2.24 if year==1984
replace wage=wage*2.17 if year==1985
replace wage=wage*2.13 if year==1986
replace wage=wage*2.05 if year==1987
replace wage=wage*1.97 if year==1988
replace wage=wage*1.88 if year==1989
replace wage=wage*1.78 if year==1990
replace wage=wage*1.71 if year==1991
replace wage=wage*1.66 if year==1992
replace wage=wage*1.57 if year==1994
replace wage=wage*1.48 if year==1996
replace wage=wage*1.45 if year==1997
replace wage=wage*1.43 if year==1998
replace wage=wage*1.40 if year==1999
replace wage=wage*1.35 if year==2000
replace wage=wage*1.32 if year==2001
replace wage=wage*1.29 if year==2002
replace wage=wage*1.27 if year==2003
replace wage=wage*1.23 if year==2004
replace wage=wage*1.19 if year==2005
replace wage=wage*1.16 if year==2006
replace wage=wage*1.12 if year==2007
replace wage=wage*1.08 if year==2008
replace wage=wage*1.09 if year==2009
replace wage=wage*1.07 if year==2010
replace wage=wage*1.04 if year==2011
replace wage=wage*1.01 if year==2012


//Winsorizing wages at w=3 and w=200
replace wage=3 if wage>0 & wage<3
replace wage=200 if wage>200 & wage!=.

gen ln_wage=ln(wage)

//Step 2H: Weight ONET98 data by the 1980 Census data and then add the ONET variables in


local onetdir "${topdir}/Data/onet"
merge m:1 occ1990dd using "`onetdir'/onet98_occ1990dd_pct.dta", keep(master match) nogen
levelsof occ1990dd if socskills_onet1998_pct==.

* Rename ONET measures
foreach x in require_social number_facility math routine socskills service reason info_use coord interact {
	rename `x'_onet1998_pct `x'
}

// Step 2J: Generate interaction variables

* Race-by-gender
gen female=(sex==2)
gen hisp_male=(race==1 & sex==1)
gen hisp_female=(race==1 & sex==2)
gen black_male=(race==2 & sex==1)
gen black_female=(race==2 & sex==2)

* NLSY skills
gen afqt_socnlsy=afqt_std*soc_nlsy_std
gen afqt_noncog=afqt_std*noncog_std

* NLSY skills and ONET tasks
gen afqt_math=afqt_std*math
gen socnlsy_math=soc_nlsy_std*math
gen afqt_socnlsy_math=afqt_std*soc_nlsy_std*math

gen afqt_routine=afqt_std*routine
gen socnlsy_routine=soc_nlsy_std*routine
gen afqt_socnlsy_routine=afqt_std*soc_nlsy_std*routine


gen afqt_socskills=afqt_std*socskills
gen socnlsy_socskills=soc_nlsy_std*socskills
gen afqt_socnlsy_socskills=afqt_std*soc_nlsy_std*socskills

gen socONETXroutine= socskills*routine
gen socONETXmath= socskills*math
gen socONETXcoord= socskills*math



** Create a Completeness indicators
gen complete79=(emp==1 & ind6090!=. & area!=. & metro!=. & urban!=. & math!=. & afqt_std!=. & soc_nlsy_std!=.)

cd "${topdir}/Data"
** Save data for merge
save "nlsy79_clean_rep.dta", replace

//Step 3: Run Regressions
//Analysis - Unweighted

cd "${topdir}/Results"

//Table 1
local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage soc_nlsy_std `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace


xi: reg ln_wage afqt_std soc_nlsy_std `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std i.educ `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog i.educ `contvars' if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


//Analysis - Unweighted
*** Table 2 - Sorting of Occupations on Skills

local contvars "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 if complete79==1 & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace	
	
xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' if complete79==1  & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 if complete79==1 & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)
	
xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' if complete79==1  & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)




****Table 3 - Returns to Skills by Occupation Task Intensity in the NLSY79****

xtset uniqueID
local contvars "i.age i.year i.area i.metro i.urban"

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine `contvars' if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4) replace	

xi: xtreg ln_wage socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars'  if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars'  if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3rep, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

//Analysis - WEIGHTED using weights from altonji


//Table 1
local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage soc_nlsy_std `contvars'  [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace


xi: reg ln_wage afqt_std soc_nlsy_std `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std i.educ `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog i.educ `contvars' [w=weight] if complete79==1 & age>=23, vce(cluster caseid_1979)
outreg2 using table1repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

*** Table 2 - Sorting of Occupations on Skills

local contvars "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 [w=weight] if complete79==1  & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace	
	
xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' [w=weight] if complete79==1  & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 [w=weight] if complete79==1  & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)
	
xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' [w=weight] if complete79==1 & age>=23 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)





****Table 3 - Returns to Skills by Occupation Task Intensity in the NLSY79****

xtset uniqueID
local contvars "i.age i.year i.area i.metro i.urban"

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine `contvars' [w=weight] if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4) replace	

xi: xtreg ln_wage socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars' [w=weight] if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars' [w=weight] if complete79==1 & age>=23 , fe vce(cluster uniqueID)
outreg2 using table3repW, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)




//Analysis -DD with amended age limits
//Analysis - Unweighted



//Table 1
local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage soc_nlsy_std `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace


xi: reg ln_wage afqt_std soc_nlsy_std `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std i.educ `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog i.educ `contvars' if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

*** Table 2 - Sorting of Occupations on Skills

local contvars "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 if complete79==1 & age>=25 & age <60& wage!=., vce(cluster caseid_1979)
outreg2 using table2rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace	
	
xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' if complete79==1  & age>=25 & age <60 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 if complete79==1 & age>=25 & age <60& wage!=., vce(cluster caseid_1979)
outreg2 using table2rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)
	
xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' if complete79==1 & age>=25 & age <60 & wage!=., vce(cluster caseid_1979)
outreg2 using table2rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


****Table 3 - Returns to Skills by Occupation Task Intensity in the NLSY79****

xtset uniqueID
local contvars "i.age i.year i.area i.metro i.urban"

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine ///
	`contvars' if complete79==1 & age>=25 & age<60 , fe vce(cluster uniqueID)
outreg2 using table3rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4) replace	

xi: xtreg ln_wage socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills ///
	`contvars'  if complete79==1 & age>=25 & age<60, fe vce(cluster uniqueID)
outreg2 using table3rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine ///
	socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills ///
	`contvars'  if complete79==1 & age>=25 & age<60 , fe vce(cluster uniqueID)
outreg2 using table3rep2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

//Analysis - WEIGHTED using weights from altonji



//Table 1
local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage soc_nlsy_std `contvars'  [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace


xi: reg ln_wage afqt_std soc_nlsy_std `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

local contvars  "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std i.educ `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg ln_wage afqt_std soc_nlsy_std afqt_socnlsy noncog_std afqt_noncog i.educ `contvars' [w=weight] if complete79==1 & age>=25 & age<60, vce(cluster caseid_1979)
outreg2 using table1repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)


*** Table 2 - Sorting of Occupations on Skills

local contvars "female hisp_male hisp_female black_male black_female i.age i.year i.area i.metro i.urban"

xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090 [w=weight]  if complete79==1 & age>=25 & age <60& wage!=., vce(cluster caseid_1979)
outreg2 using table2repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3) replace	
	
xi: reg routine afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' [w=weight]  if complete79==1 & age>=25 & age <60 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy i.educ `contvars' i.ind6090  [w=weight]  if complete79==1 & age>=25 & age <60 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)
	
xi: reg socskills afqt_std soc_nlsy_std afqt_socnlsy math number_facility reason info_use i.educ `contvars' [w=weight]  if complete79==1 & age>=25 & age <60 & wage!=., vce(cluster caseid_1979)
outreg2 using table2repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(3)

****Table 3 - Returns to Skills by Occupation Task Intensity in the NLSY79****

xtset uniqueID
local contvars "i.age i.year i.area i.metro i.urban"

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine `contvars' [w=weight] if complete79==1 & age>=25 & age<60 , fe vce(cluster uniqueID)
outreg2 using table3repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4) replace	

xi: xtreg ln_wage socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars' [w=weight] if complete79==1 & age>=25 & age<60 , fe vce(cluster uniqueID)
outreg2 using table3repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

xi: xtreg ln_wage routine afqt_routine socnlsy_routine afqt_socnlsy_routine socskills afqt_socskills socnlsy_socskills afqt_socnlsy_socskills `contvars' [w=weight] if complete79==1 & age>=25 & age<60, fe vce(cluster uniqueID)
outreg2 using table3repW2, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)



//------ Extension----


xtset uniqueID
local contvars "i.age i.year i.area i.metro i.urban i.educ"

xi: xtreg delta_wage socskills routine reason math coord number_facility  if age>=23 & age<65, fe vce(cluster uniqueID)
outreg2 using tableExt, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4) replace	

xi: xtreg delta_wage socskills routine reason math coord number_facility `contvars' if age>=23 & age<65, fe vce(cluster uniqueID)
outreg2 using tableExt, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)

xi: xtreg delta_wage socONETXroutine reason math coord number_facility `contvars' if age>=23 & age<65, fe vce(cluster uniqueID)
outreg2 using tableExt, alpha(0.01, 0.05, 0.10) bracket nocons excel dec(4)


//Code for Figure 1
xtile socskill_level=socskills
xtile routine_level=routine
replace routine_level=0 if routine_level==1
replace routine_level=1 if routine_level==0
replace routine_level=3 if routine_level==2
replace routine_level=2 if routine_level==1
gen socXroutlevel= socskill_level*routine_level

preserve
collapse wage, by(socXroutlevel year)
twoway (line wage year), by(socXroutlevel)

graph save Graph "${topdir}/Results/Figure1.gph"
restore

cd "${topdir}/Data"
save "nlsy79_clean_rep.dta", replace
