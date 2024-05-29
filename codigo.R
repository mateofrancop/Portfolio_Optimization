> matriz_precios = read.table('precios.csv', head=TRUE, sep = ",", row.name = 'Fecha')
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
  In file(file, "rt") :
  cannot open file 'precios.csv': No such file or directory
> getwd()
[1] "C:/Users/Alvaro/OneDrive/Documentos"
> matriz_precios = read.table('precios.csv', head=TRUE, sep = ",", row.name = 'Fecha')
Error in data[[rowvar]] : 
  attempt to select less than one element in get1index
> matriz_precios = read.table('precios.csv', head=TRUE, sep = ",", row.names = 'Fecha')
Error in data[[rowvar]] : 
  attempt to select less than one element in get1index
> matriz_precios = read.table('precios.csv', head=TRUE, sep = ",", row.names = 'Date')
Error in data[[rowvar]] : 
  attempt to select less than one element in get1index
> matriz_precios = read.table('precios.csv', head=TRUE, sep = ",")
> View(matriz_precios)
> matriz_precios = read.table('precios.csv', head=TRUE, sep = ";", row.names = "Date")
> n = nrow(matriz_precios)
> matriz_rendimientos = ((matriz_precios[2:n,]-matriz_precios[1:(n-1),])/matriz_precios[1:(n-1),])
> View(matriz_rendimientos)
> View(matriz_precios)
> View(matriz_rendimientos)
> rendimientos_esperados = colMeans(matriz_rendimientos)
> rendimientos_esperados
AAPL          AMZN       CSPX.CL  GRUPOSURA.CL    ICOLCAP.CL       IUFS.CL 
0.0001830130  0.0005607798  0.0006017249  0.0002427810 -0.0002480724  0.0004472063 
IUIT.CL            NU PFGRUPSURA.CL          UBER           VOO 
0.0010936581  0.0017400857  0.0002320123  0.0022151470  0.0004553791 
> pesos_iguales = rep(1/11, 11)
> pesos_iguales
[1] 0.09090909 0.09090909 0.09090909 0.09090909 0.09090909 0.09090909 0.09090909
[8] 0.09090909 0.09090909 0.09090909 0.09090909
> rendimiento_portafolio = t(pesos_iguales)%*%rendimientos_esperados
> View(rendimiento_portafolio)
> View(matriz_precios)
varianza_covarianza = cov(matriz_rendimientos)
> View(varianza_covarianza)
> varianza_portafolo = t(pesos_iguales)%*%(varianza_covarianza%*%pesos_iguales)
> s_d_portafolio = sqrt(varianza_portafolo)
> View(varianza_covarianza)
> install.packages("fPortfolio")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
Warning in install.packages :
  dependency ‘Matrix’ is not available
also installing the dependencies ‘SparseM’, ‘MatrixModels’, ‘cpp11’, ‘cubature’, ‘mvtnorm’, ‘mnormt’, ‘numDeriv’, ‘quantreg’, ‘igraph’, ‘Rcpp’, ‘gsl’, ‘bitops’, ‘gss’, ‘stabledist’, ‘fMultivar’, ‘sn’, ‘ecodist’, ‘mvnormtest’, ‘energy’, ‘DEoptimR’, ‘truncnorm’, ‘RCurl’, ‘XML’, ‘timeDate’, ‘timeSeries’, ‘fBasics’, ‘fAssets’, ‘fCopulae’, ‘robustbase’, ‘Rglpk’, ‘slam’, ‘Rsolnp’, ‘quadprog’, ‘kernlab’, ‘rneos’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/SparseM_1.81.zip'
Content type 'application/zip' length 1042203 bytes (1017 KB)
downloaded 1017 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/MatrixModels_0.5-3.zip'
Content type 'application/zip' length 414539 bytes (404 KB)
downloaded 404 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/cpp11_0.4.7.zip'
Content type 'application/zip' length 304065 bytes (296 KB)
downloaded 296 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/cubature_2.1.0.zip'
Content type 'application/zip' length 2402053 bytes (2.3 MB)
downloaded 2.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/mvtnorm_1.2-4.zip'
Content type 'application/zip' length 753392 bytes (735 KB)
downloaded 735 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/mnormt_2.1.1.zip'
Content type 'application/zip' length 179394 bytes (175 KB)
downloaded 175 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/numDeriv_2016.8-1.1.zip'
Content type 'application/zip' length 116116 bytes (113 KB)
downloaded 113 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/quantreg_5.97.zip'
Content type 'application/zip' length 1562494 bytes (1.5 MB)
downloaded 1.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/igraph_2.0.3.zip'
Content type 'application/zip' length 7260351 bytes (6.9 MB)
downloaded 6.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/Rcpp_1.0.12.zip'
Content type 'application/zip' length 2877838 bytes (2.7 MB)
downloaded 2.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/gsl_2.1-8.zip'
Content type 'application/zip' length 776831 bytes (758 KB)
downloaded 758 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/bitops_1.0-7.zip'
Content type 'application/zip' length 31813 bytes (31 KB)
downloaded 31 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/gss_2.2-7.zip'
Content type 'application/zip' length 1695838 bytes (1.6 MB)
downloaded 1.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/stabledist_0.7-1.zip'
Content type 'application/zip' length 76015 bytes (74 KB)
downloaded 74 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/fMultivar_4031.84.zip'
Content type 'application/zip' length 156219 bytes (152 KB)
downloaded 152 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/sn_2.1.1.zip'
Content type 'application/zip' length 1831750 bytes (1.7 MB)
downloaded 1.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/ecodist_2.1.3.zip'
Content type 'application/zip' length 468496 bytes (457 KB)
downloaded 457 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/mvnormtest_0.1-9-3.zip'
Content type 'application/zip' length 24149 bytes (23 KB)
downloaded 23 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/energy_1.7-11.zip'
Content type 'application/zip' length 638270 bytes (623 KB)
downloaded 623 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/DEoptimR_1.1-3.zip'
Content type 'application/zip' length 74909 bytes (73 KB)
downloaded 73 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/truncnorm_1.0-9.zip'
Content type 'application/zip' length 29147 bytes (28 KB)
downloaded 28 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/RCurl_1.98-1.14.zip'
Content type 'application/zip' length 4890002 bytes (4.7 MB)
downloaded 4.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/XML_3.99-0.16.1.zip'
Content type 'application/zip' length 3092318 bytes (2.9 MB)
downloaded 2.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/timeDate_4032.109.zip'
Content type 'application/zip' length 1439427 bytes (1.4 MB)
downloaded 1.4 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/timeSeries_4032.109.zip'
Content type 'application/zip' length 2107106 bytes (2.0 MB)
downloaded 2.0 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/fBasics_4032.96.zip'
Content type 'application/zip' length 2705686 bytes (2.6 MB)
downloaded 2.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/fAssets_4023.85.zip'
Content type 'application/zip' length 292691 bytes (285 KB)
downloaded 285 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/fCopulae_4022.85.zip'
Content type 'application/zip' length 643661 bytes (628 KB)
downloaded 628 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/robustbase_0.99-2.zip'
Content type 'application/zip' length 3092763 bytes (2.9 MB)
downloaded 2.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/Rglpk_0.6-5.1.zip'
Content type 'application/zip' length 434357 bytes (424 KB)
downloaded 424 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/slam_0.1-50.zip'
Content type 'application/zip' length 189475 bytes (185 KB)
downloaded 185 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/Rsolnp_1.16.zip'
Content type 'application/zip' length 251538 bytes (245 KB)
downloaded 245 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/quadprog_1.5-8.zip'
Content type 'application/zip' length 37185 bytes (36 KB)
downloaded 36 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/kernlab_0.9-32.zip'
Content type 'application/zip' length 2537592 bytes (2.4 MB)
downloaded 2.4 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/rneos_0.4-0.zip'
Content type 'application/zip' length 248304 bytes (242 KB)
downloaded 242 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/fPortfolio_4023.84.zip'
Content type 'application/zip' length 1676809 bytes (1.6 MB)
downloaded 1.6 MB

package ‘SparseM’ successfully unpacked and MD5 sums checked
package ‘MatrixModels’ successfully unpacked and MD5 sums checked
package ‘cpp11’ successfully unpacked and MD5 sums checked
package ‘cubature’ successfully unpacked and MD5 sums checked
package ‘mvtnorm’ successfully unpacked and MD5 sums checked
package ‘mnormt’ successfully unpacked and MD5 sums checked
package ‘numDeriv’ successfully unpacked and MD5 sums checked
package ‘quantreg’ successfully unpacked and MD5 sums checked
package ‘igraph’ successfully unpacked and MD5 sums checked
package ‘Rcpp’ successfully unpacked and MD5 sums checked
package ‘gsl’ successfully unpacked and MD5 sums checked
package ‘bitops’ successfully unpacked and MD5 sums checked
package ‘gss’ successfully unpacked and MD5 sums checked
package ‘stabledist’ successfully unpacked and MD5 sums checked
package ‘fMultivar’ successfully unpacked and MD5 sums checked
package ‘sn’ successfully unpacked and MD5 sums checked
package ‘ecodist’ successfully unpacked and MD5 sums checked
package ‘mvnormtest’ successfully unpacked and MD5 sums checked
package ‘energy’ successfully unpacked and MD5 sums checked
package ‘DEoptimR’ successfully unpacked and MD5 sums checked
package ‘truncnorm’ successfully unpacked and MD5 sums checked
package ‘RCurl’ successfully unpacked and MD5 sums checked
package ‘XML’ successfully unpacked and MD5 sums checked
package ‘timeDate’ successfully unpacked and MD5 sums checked
package ‘timeSeries’ successfully unpacked and MD5 sums checked
package ‘fBasics’ successfully unpacked and MD5 sums checked
package ‘fAssets’ successfully unpacked and MD5 sums checked
package ‘fCopulae’ successfully unpacked and MD5 sums checked
package ‘robustbase’ successfully unpacked and MD5 sums checked
package ‘Rglpk’ successfully unpacked and MD5 sums checked
package ‘slam’ successfully unpacked and MD5 sums checked
package ‘Rsolnp’ successfully unpacked and MD5 sums checked
package ‘quadprog’ successfully unpacked and MD5 sums checked
package ‘kernlab’ successfully unpacked and MD5 sums checked
package ‘rneos’ successfully unpacked and MD5 sums checked
package ‘fPortfolio’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> install.packages("timeSeries")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/timeSeries_4032.109.zip'
Content type 'application/zip' length 2107106 bytes (2.0 MB)
downloaded 2.0 MB

package ‘timeSeries’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> install.packages("quantmod")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
also installing the dependencies ‘xts’, ‘zoo’, ‘TTR’, ‘curl’, ‘jsonlite’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/xts_0.13.2.zip'
Content type 'application/zip' length 851888 bytes (831 KB)
downloaded 831 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/zoo_1.8-12.zip'
Content type 'application/zip' length 1020526 bytes (996 KB)
downloaded 996 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/TTR_0.24.4.zip'
Content type 'application/zip' length 525291 bytes (512 KB)
downloaded 512 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/curl_5.2.1.zip'
Content type 'application/zip' length 3218081 bytes (3.1 MB)
downloaded 3.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/jsonlite_1.8.8.zip'
Content type 'application/zip' length 1105576 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/quantmod_0.4.26.zip'
Content type 'application/zip' length 1050750 bytes (1.0 MB)
downloaded 1.0 MB

package ‘xts’ successfully unpacked and MD5 sums checked
package ‘zoo’ successfully unpacked and MD5 sums checked
package ‘TTR’ successfully unpacked and MD5 sums checked
package ‘curl’ successfully unpacked and MD5 sums checked
package ‘jsonlite’ successfully unpacked and MD5 sums checked
package ‘quantmod’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> install.packages("dplyr")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
also installing the dependencies ‘generics’, ‘tidyselect’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/generics_0.1.3.zip'
Content type 'application/zip' length 79872 bytes (78 KB)
downloaded 78 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/tidyselect_1.2.1.zip'
Content type 'application/zip' length 225275 bytes (219 KB)
downloaded 219 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/dplyr_1.1.4.zip'
Content type 'application/zip' length 1561068 bytes (1.5 MB)
downloaded 1.5 MB

package ‘generics’ successfully unpacked and MD5 sums checked
package ‘tidyselect’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> install.packages("PerformanceAnalytics")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/PerformanceAnalytics_2.0.4.zip'
Content type 'application/zip' length 3114442 bytes (3.0 MB)
downloaded 3.0 MB

package ‘PerformanceAnalytics’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> install.packages("ggplot2")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Alvaro/AppData/Local/R/win-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.3/ggplot2_3.5.1.zip'
Content type 'application/zip' length 4954226 bytes (4.7 MB)
downloaded 4.7 MB

package ‘ggplot2’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alvaro\AppData\Local\Temp\RtmpA7Ilqj\downloaded_packages
> 
  > library(fPortfolio)
Loading required package: timeDate
Loading required package: timeSeries

Attaching package: ‘timeSeries’

The following objects are masked from ‘package:graphics’:
  
  lines, points

Loading required package: fBasics
Loading required package: fAssets
Warning messages:
  1: package ‘fPortfolio’ was built under R version 4.3.3 
2: package ‘timeDate’ was built under R version 4.3.2 
3: package ‘timeSeries’ was built under R version 4.3.3 
4: package ‘fBasics’ was built under R version 4.3.3 
5: package ‘fAssets’ was built under R version 4.3.3 
> library(timeSeries)
> library(quantmod)
Loading required package: xts
Loading required package: zoo

Attaching package: ‘zoo’

The following object is masked from ‘package:timeSeries’:
  
  time<-
  
  The following objects are masked from ‘package:base’:
  
  as.Date, as.Date.numeric

Loading required package: TTR

Attaching package: ‘TTR’

The following object is masked from ‘package:fBasics’:
  
  volatility

Registered S3 method overwritten by 'quantmod':
  method            from
as.zoo.data.frame zoo 
Warning messages:
  1: package ‘quantmod’ was built under R version 4.3.3 
2: package ‘xts’ was built under R version 4.3.3 
3: package ‘zoo’ was built under R version 4.3.3 
4: package ‘TTR’ was built under R version 4.3.3 
> library(dplyr)

######################### Warning from 'xts' package ##########################
#                                                                             #
# The dplyr lag() function breaks how base R's lag() function is supposed to  #
# work, which breaks lag(my_xts). Calls to lag(my_xts) that you type or       #
# source() into this session won't work correctly.                            #
#                                                                             #
# Use stats::lag() to make sure you're not using dplyr::lag(), or you can add #
# conflictRules('dplyr', exclude = 'lag') to your .Rprofile to stop           #
# dplyr from breaking base R's lag() function.                                #
#                                                                             #
# Code in packages is not affected. It's protected by R's namespace mechanism #
# Set `options(xts.warn_dplyr_breaks_lag = FALSE)` to suppress this warning.  #
#                                                                             #
###############################################################################

Attaching package: ‘dplyr’

The following objects are masked from ‘package:xts’:
  
  first, last

The following objects are masked from ‘package:timeSeries’:
  
  filter, lag

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

Warning message:
  package ‘dplyr’ was built under R version 4.3.3 
> library(PerformanceAnalytics)

Attaching package: ‘PerformanceAnalytics’

The following objects are masked from ‘package:fBasics’:
  
  kurtosis, skewness

The following objects are masked from ‘package:timeDate’:
  
  kurtosis, skewness

The following object is masked from ‘package:graphics’:
  
  legend

Warning message:
  package ‘PerformanceAnalytics’ was built under R version 4.3.3 
> library(ggplot2)
Warning message:
  package ‘ggplot2’ was built under R version 4.3.3 
> > matriz_rendimientos = as.timeSeries(matriz_rendimientos)
> View(matriz_precios)
> View(rendimiento_portafolio)
> View(matriz_precios)
> View(s_d_portafolio)
> View(matriz_precios)
>
                                                                   
                                                                                                                                          
unused argument (contraints = "Longonly")
> frontera_eficiente = portfolioFrontier(matriz_rendimientos, `setRiskFreeRate<-`(porfoliospec(), 0.1225/250), constraints = 'Longonly')
Error in porfoliospec() : could not find function "porfoliospec"
> frontera_eficiente = portfolioFrontier(matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), constraints = 'Longonly')

plot(frontera_eficiente, c(1,2,3,4))
> plot(frontera_eficiente, c(7,8))                                                                                                                                       
> plot(frontera_eficiente, c(7,8))                                                                                                                                      
> plot(frontera_eficiente, c(7,8)
       
 library(fPortfolio)
 library(timeSeries)
 library(quantmod)
 library(dplyr)
 library(PerformanceAnalytics)
 library(ggplot2)
 > pesos_frontera = getWeights(frontera_eficiente)
 > View(pesos_frontera)
 > riesgo_rendimiento_frontera = frontierPoints(frontera_eficiente)
 > View(riesgo_rendimiento_frontera)
 > save.image("C:/Users/Alvaro/OneDrive/Documentos/Optimizacion_R/data.RData")
 > portafolio_var_min = minvariancePortfolio(
   +     matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
   +     constraints = "LongOnly")
 > 
   > View(portafolio_var_min)
 > pesos_var_min = getWeights(portafolio_var_min)
 > View(pesos_frontera)
 > View(pesos.var.min)
 Error in View : object 'pesos.var.min' not found
 > View(pesos_var_min)
 > View(pesos_var_min)
 > barplot(pesos_var_min)
 > pie(pesos_var_min)
 > portafolio_tangencia = tangencyPortfolio(
   +     matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
   +     constraints = "LongOnly")
 > 
   > View(portafolio_tangencia)
 
 > View(rendimientos_esperados)
 Warning messages:
   1: package ‘fPortfolio’ was built under R version 4.3.3 
 2: package ‘timeDate’ was built under R version 4.3.2 
 3: package ‘timeSeries’ was built under R version 4.3.3 
 4: package ‘fBasics’ was built under R version 4.3.3 
 5: package ‘fAssets’ was built under R version 4.3.3 
 > matriz_rendimientos <- log(matriz_precios[2:n, ] / matriz.precios[1:(n-1), ])
 Error: object 'matriz.precios' not found
 > matriz_rendimientos <- log(matriz_precios[2:n, ] / matriz_precios[1:(n-1), ])
 > View(matriz_rendimientos)
 > rendimiento_esperado = colMeans(matriz_rendimientos)
 > View(rendimiento_esperado)
 > rendimiento_portafolio = t(pesos_iguales)%*%rendimiento_esperado
 > matriz_rendimientos = as.timeSeries(matriz_rendimientos)
 > frontera_eficiente = portfolioFrontier(
   +     matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
   +     constraints = "LongOnly")
 > save.image("C:/Users/Alvaro/OneDrive/Documentos/Optimizacion_R/data.RData.change.RData")
 > rm(rendimientos_esperados)
 > View(frontera_eficiente)
 > plot(frontera.eficiente, c(1,2,3,4,7,8))
 Error in h(simpleError(msg, call)) : 
   error in evaluating the argument 'x' in selecting a method for function 'plot': object 'frontera.eficiente' not found
 > plot(frontera_eficiente, c(1,2,3,4,7,8))
 > pesos_frontera = getWeights(frontera_eficiente)
 > View(pesos_frontera)
 > write.csv(pesos_frontera, "pesosfrontera.csv")
 > riesgo_rendimiento_frontera = frontierPoints(frontera_eficiente)
 > riesgo_rendimiento_frontera
 targetRisk  targetReturn
 1  0.011332657 -2.874433e-04
 2  0.010710167 -2.465003e-04
 3  0.010263926 -2.055572e-04
 4  0.009913513 -1.646141e-04
 5  0.009634071 -1.236710e-04
 6  0.009392209 -8.272796e-05
 7  0.009181031 -4.178488e-05
 8  0.009001919 -8.417997e-07
 9  0.008853407  4.010128e-05
 10 0.008738837  8.104436e-05
 11 0.008676992  1.219874e-04
 12 0.008672753  1.629305e-04
 13 0.008726204  2.038736e-04
 14 0.008836297  2.448167e-04
 15 0.009000707  2.857597e-04
 16 0.009204019  3.267028e-04
 17 0.009436848  3.676459e-04
 18 0.009697068  4.085890e-04
 19 0.009982538  4.495321e-04
 20 0.010291156  4.904751e-04
 21 0.010624532  5.314182e-04
 22 0.010992803  5.723613e-04
 23 0.011393634  6.133044e-04
 24 0.011823712  6.542475e-04
 25 0.012279967  6.951905e-04
 26 0.012760871  7.361336e-04
 27 0.013268570  7.770767e-04
 28 0.013801159  8.180198e-04
 29 0.014355869  8.589628e-04
 30 0.014930233  8.999059e-04
 31 0.015522070  9.408490e-04
 32 0.016129457  9.817921e-04
 33 0.016750702  1.022735e-03
 34 0.017388203  1.063678e-03
 35 0.018051507  1.104621e-03
 36 0.018745179  1.145564e-03
 37 0.019479411  1.186507e-03
 38 0.020250213  1.227451e-03
 39 0.021053569  1.268394e-03
 40 0.021885896  1.309337e-03
 41 0.022765240  1.350280e-03
 42 0.023745411  1.391223e-03
 43 0.024818044  1.432166e-03
 44 0.025971686  1.473109e-03
 45 0.027196028  1.514052e-03
 46 0.028481956  1.554995e-03
 47 0.029821503  1.595938e-03
 48 0.031207765  1.636881e-03
 49 0.032634789  1.677824e-03
 attr(,"control")
 targetRisk targetReturn         auto 
 "Cov"       "mean"       "TRUE" 
 > View(riesgo_rendimiento_frontera)
 > plot(riesgo_rendimiento_frontera)
 > write.csv(riesgo_rendimiento_frontera, "riesgorendimientofrontera1.csv")
 > portafolio_var_min = minvariancePortfolio(
   +     matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
   +     constraints = "LongOnly")
 > pesos_var_min = getWeights(portafolio_var_min) 
 > View(pesos_var_min)
 > barplot(pesos_var_min)
 > 
   > portafolio_tangencia = tangencyPortfolio(
     +     matriz_rendimientos, `setRiskFreeRate<-`(portfolioSpec(), 0.1225/250), 
     +     constraints = "LongOnly")
 > pesos_port_tangencia = getWeights(portafolio_tangencia)
 > View(pesos_port_tangencia)
 > barplot(pesos_port_tangencia)
 > write.csv(pesos_port_tangencia, 'pesos.port.tangencia1')