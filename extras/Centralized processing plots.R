library(readr)
df = read_csv('/Users/yohan/Desktop/untitled folder/Testing404 Results/404_gjo_Overall_;events_by_decile.csv')

hist(df$quant_consistency, main = 'Quantitative Consistency of Diagnoses',
                          xlab = 'Quantitative Consistency Score',
                          ylab = 'Frequency', 
                          col = 'dark green')

hist(df$qual_consistency, main = 'Qualitative Consistency of Diagnoses',
     xlab = 'Qualitative Consistency Score',
     ylab = 'Frequency', 
     col = 'dark green')

#df = read_csv('/Users/yohan/Desktop/untitled folder/Testing404 Results/404_gjo_Overall_;events.csv')


# 904 = Drugs
df = read_csv('/Users/yohan/Desktop/untitled folder/Testing904 Results/904_gjo_Overall_;events_by_decile.csv')
hist(df$quant_consistency, main = 'Quantitative Consistency of Drugs',
     xlab = 'Quantitative Consistency Score',
     ylab = 'Frequency', 
     col = 'dark red')

#df = read_csv('/Users/yohan/Desktop/untitled folder/Testing904 Results/904_gjo_Overall_;events.csv')
hist(df$qual_consistency, main = 'Qualitative Consistency of Drugs',
     xlab = 'Qualitative Consistency Score',
     ylab = 'Frequency', 
     col = 'dark red')

# 604 = Procedures
df = read_csv('/Users/yohan/Desktop/untitled folder/Testing604 Results/604_gjo_Overall_;events_by_decile.csv')
hist(df$quant_consistency, main = 'Quantitative Consistency of Procedures',
     xlab = 'Quantitative Consistency Score',
     ylab = 'Frequency', 
     col = 'dark blue')

#df = read_csv('/Users/yohan/Desktop/untitled folder/Testing604 Results/604_gjo_Overall_;events.csv')
hist(df$qual_consistency, main = 'Qualitative Consistency of Procedures',
     xlab = 'Qualitative Consistency Score',
     ylab = 'Frequency', 
     col = 'dark blue')

