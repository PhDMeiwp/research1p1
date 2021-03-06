#' An Example for Choosing 'barplot' or 'boxplot'
#' 
#' @description An exmaple.
#' @export
#' @examples 
#' library(R11)
#' # barplot_or_boxplot()
#' a<-1:5
#' b<-2:14
#' c<-c(1,5,6,15,25,14,20)
#' a<-as.numeric(a)
#' b<-as.numeric(b)
#' x<-c(a,b,c)
#' g <- c('group1', 'group2', 'group3')
#' group<-rep(g, c(5,13,7))
#' dat<-data.frame(x,group)
#' View(dat)
#' 
#' tapply(dat$x, dat$group, shapiro.test) # Normal distribution test
#' 
#' ##-----------------------------------------
#' #     Test of Homogeneity of Variances
#' ##-----------------------------------------
#' 
#' bartlett.test(dat$x~dat$group) 
#' 
#' # Levene's Test (center = median)
#' library(car)
#' leveneTest(dat$x, dat$group) # P-value>0, then boxplot
#' 
#' boxplot(dat$x~dat$group, ylim=c(0,30))
#' 
#' ##-------------------------------------------------
#' #     Significance test and its post-hoc test
#' ##-------------------------------------------------
#' 
#' kruskal.test(dat$x~dat$group)
#' 
#' library(dunn.test)
#' # Dunn's test of multiple comparisons using rank sums
#' dunn.test(x=dat$x, g = dat$group,list = T)
#' 
#' tapply(dat$x, dat$group, median)
#' 
#' # label significance followed dunn.test results 
#' 
#' text(1, max(dat$x[dat$group=="group1"])+1,"b")
#' text(2, max(dat$x[dat$group=="group2"])+1,"a")
#' text(3, max(dat$x[dat$group=="group3"])+1,"a")
#' 
#' ##-------------------------------------------------
#' #        Alternatively, use ggplot2
#' ##------------------------------------------------- 
#' 
#' library(ggplot2)
#' cols<-c("grey50", "blue", "red")
#' 
#' p<- ggplot(data=dat,mapping = aes(x=dat$group, y=dat$x))+
#'        geom_boxplot(fill=cols, alpha=0.7)+
#'        ylim(0,30)+
#'        xlab('Groups')+ylab('x value')+ theme_bw()
#' p
#' 
#' p + geom_jitter()
#' 
#' p + annotate(geom="text", x=1, y=max(dat$x[dat$group=="group1"])+1, label="b", color="black") + 
#'     annotate(geom="text", x=2, y=max(dat$x[dat$group=="group2"])+1, label="a", color="black") + 
#'     annotate(geom="text", x=3, y=max(dat$x[dat$group=="group3"])+1, label="a", color="black")
#'     
#' # More links
#' # http://www.sthda.com/english/wiki/ggplot2-texts-add-text-annotations-to-a-graph-in-r-software
#' # http://t-redactyl.io/blog/2016/04/creating-plots-in-r-using-ggplot2-part-10-boxplots.html
#' @seealso \code{\link[stats]{bartlett.test}}, \code{\link[car]{leveneTest}}, \code{\link[DescTools]{LeveneTest}}, \code{\link[dunn.test]{dunn.test}} 

barplot_or_boxplot<-function(){?barplot_or_boxplot}
