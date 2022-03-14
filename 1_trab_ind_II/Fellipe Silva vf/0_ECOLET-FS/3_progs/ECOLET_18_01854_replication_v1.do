*Replication of MS18_01854 (Economics Letters)
*Authors: Christian Lehmann (corresponding author) and Hellen Matarazzo

/* Required STATA packages: 
- "rdbwselect_2014" and "rdbwselect" must be installed to run this do-file. 
- They can be downloaded at https://sites.google.com/site/rdpackages/rdrobust/stata (last accessed 17 Jan 2019) 
- References: Calonico, S., Cattaneo, M. D., and R. Titiunik. 2014. Robust Data-Driven Inference in the Regression-DiscontinuityDesign. Stata Journal 14(4): 909-946, 4th Quarter 2014; Calonico, S., M. D. Cattaneo, M. H. Farrell, and R. Titiunik. 2016b. rdrobust: Software for Regression DiscontinuityDesigns.  Working Paper.  
*/


/// preambule ///
clear all
version 13.1
set more off


/// set directory ///

cd "C:\Users\up202000782\Downloads\ECOLET_18_01854_replication" // enter the directory where you put the (unzipped) replication folder "ECOLET_18_01854_replication"   


/// log file ///

capture log close
log using ECOLET_18_01854_v3, replace


/// Load data ///

use ECOLET_18_01854, clear //  n=2929 cities (cities with a lame-duck mayor in 2004-08 term were dropped) 


/// Create key variables ///

*distance to population cutoffs
g dist=. 
replace dist=population-70  if state!=35  // all states except Sao Paulo
replace dist=population-100 if state==35  // Sao Paulo State
lab var dist "distance to population cutoffs (in 000s residents)"

*Farmacia Popular eligibility dummy
g fpeligible=0      
replace fpeligible=1 if population>=100 &  state==35 & population!=.
replace fpeligible=1 if population>=70  &  state!=35 & population!=.
lab var fpeligible "eligible for Farmacia Popular"

*generate spline polinomial  
g dist_fpeligible=dist*fpeligible 	
 
 
 
/// Replication of Table 1 /// 

**Replication of columns 1-4**   

/* foreach bwmethod in CV IK  {
preserve 
rdbwselect_2014 votes_share_08 dist, c(0) p(1) kernel(tri) bwselect("`bwmethod'") 
loc bw=round(e(h_`bwmethod'))
drop if dist>`bw'
drop if dist<-`bw'

*Panel A. OLS estimates
reg votes_share_04 fpcomplier dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelA_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

reg votes_share_08 fpcomplier dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelA_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 


*Panel B. Reduced-form estimates (sharp regression discontinuity design)
reg votes_share_04 fpeligible dist dist_fpeligible, r cluster(state)
outreg2 fpeligible using "Table1_PanelB_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

reg votes_share_08 fpeligible dist dist_fpeligible, r cluster(state)
outreg2 fpeligible using "Table1_PanelB_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 


*Panel C. 2SLS estimates (fuzzy regression discontinuity design) 
ivreg2 votes_share_04 (fpcomplier=fpeligible) dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelC_2SLS_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

ivreg2 votes_share_08 (fpcomplier=fpeligible) dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelC_2SLS_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 

reg fpcomplier fpeligible dist dist_fpeligible, r cluster(state) 
outreg2 fpeligible using "Table1_PanelC_firststage_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

restore
}


**Replication of columns 5-6**   

foreach bwmethod in cerrd  {
preserve 
rdbwselect votes_share_08 dist, c(0) p(1) kernel(tri) bwselect("`bwmethod'") 
loc bw=round(e(h_`bwmethod'))
drop if dist>`bw'
drop if dist<-`bw'

*Panel A. OLS estimates
reg votes_share_04 fpcomplier dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelA_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

reg votes_share_08 fpcomplier dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelA_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 


*Panel B. Reduced-form estimates (sharp regression discontinuity design)
reg votes_share_04 fpeligible dist dist_fpeligible, r cluster(state)
outreg2 fpeligible using "Table1_PanelB_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

reg votes_share_08 fpeligible dist dist_fpeligible, r cluster(state)
outreg2 fpeligible using "Table1_PanelB_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 


*Panel C. 2SLS estimates (fuzzy regression discontinuity design) 
ivreg2 votes_share_04 (fpcomplier=fpeligible) dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelC_2SLS_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

ivreg2 votes_share_08 (fpcomplier=fpeligible) dist dist_fpeligible, r cluster(state)
outreg2 fpcomplier using "Table1_PanelC_2SLS_`bwmethod'.xls", append  se slow(1000) nocons lab dec(5) 

reg fpcomplier fpeligible dist dist_fpeligible, r cluster(state) 
outreg2 fpeligible using "Table1_PanelC_firststage_`bwmethod'.xls", replace  se slow(1000) nocons lab dec(5) 

restore
} */



/// Replication of Figure 1 /// 

g fpcomplier100=fpcomplier*100
cmogram fpcomplier100 dist if dist<=100 & dist>=-100, cut(0) cutright scatter line(0) histopts(bin(10)) graphopts(ytitle(cities with Farmacia Popular (%)) xtitle(distance to eligibility threshold (000s inhabitants)))  
graph save figure1, replace
drop fpcomplier100



/// Replication of Figure 2 /// 

foreach i in votes_share_04 votes_share_08 {
cmogram `i' dist if dist<=100 & dist>=-100, cut(0) cutright scatter line(0) lfitci  histopts(bin(100)) graphopts(xtitle(distance to eligibility threshold (000s inhabitants))) 
graph save rdd_`i', replace
}
gr combine ///
rdd_votes_share_04.gph ///
rdd_votes_share_08.gph, rows(1	)  xcom
graph save figure2, replace
erase rdd_votes_share_04.gph 
erase rdd_votes_share_08.gph


log close


