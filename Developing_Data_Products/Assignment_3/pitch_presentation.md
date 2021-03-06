Mitigating Opioid Overdose
========================================================
author: Shruthi Gopal
date: August 5th, 2018
autosize: true

Introduction
========================================================

The United States has a serious opioid overuse epidemic. Opioids are drugs used to treat pain, but patients can easily get addicted to them and even die from overdose. It was estimated that almost 65,000 people in 2017 died from drug overdose in the United States.

Higher dosages of opioids are associated with higher risk of overdose and death. This means that calculating the total daily dosage of opioids for your patients can help identify those that are at risk for overdose. 

The Morphine Equivalent Dosage (MED) is a measure for the total milligrams of opioid drugs (e.g., fentanyl, oxycodone) that a patient takes each day. You, as a doctor, should determine whether your patient's daily MED exceeds the recommended threshold of 90 mg.

Calculations
========================================================

Each drug has a specific conversion factor. To determine total daily MED for a patient, we need to multiply each dosage (mg) by the drug-specific conversion factor and sum up.

| Drug         | Conversion Factor |
|-------------:|:------------------|
|Codeine       |0.15               |
|Fentanyl      |2.4                |
|Hydrocodone   |1                  |
|Hydromorphone |4                  |
|Morphine      |1                  |
|Oxycodone     |1.5                |
|Oxymorphone   |3                  |


Daily Opioid MED Calculator
========================================================

You can use the following shiny application to determine daily MED <https://sgopal.shinyapps.io/myapp/>.

The ui.R and server.R codes are available in this GitHub repo:
<https://github.com/sgopal9/datasciencecoursera/tree/master/Developing_Data_Products/Assignment_3>.

Sample MED Calculation
========================================================

The daily MED for the patient below is 145, well above the recommended threshold.


```r
med <- function(codeine, fentanyl, hydrocodone, hydromorphone, 
                morphine, oxycodone, oxymorphone) {
med = sum((codeine * 0.15), (fentanyl * 2.4), (hydrocodone * 1), (hydromorphone * 4), (morphine * 1), (oxycodone * 1.5), (oxymorphone * 3))
return(med)}

med(codeine = 100, fentanyl = 0, hydrocodone = 50, hydromorphone = 0, morphine = 20, oxycodone = 40, oxymorphone = 0)
```

```
[1] 145
```
