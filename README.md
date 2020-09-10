# HDD-Failure
### An end to end project for predicting failure of hard disks (HDD) in a data center


In this project, I will build a predictive model that seeks to inform the user when a hard disk drive will fail.  The data come from backblaze.com, and right now are approximatly 60 GB in size.  The data span from 2013 until the present. Each day, the readings for every single HDD are recorded in a csv file and are published each quarter.  Each row in the csv file is a single HDD, containing identification information, model information and all of the SMART readings.  SMART stands for Self-Monitoring and Reporting Technology.  

The final product will be a dashboard that a user can bring up and which drives are most likley to fail within a given time frame (1,7, 30 days or hours etc.).  It should also give a probability that a failure will occur.  The user should be ble to pull up failure statisitcs on specific models, There are two types of failure that can occur, a predictable failure, and unpredictable failure.  predictable failures are the result of long term wear and tear, temperature spikes, and other processes that degrade the integrity of the drive over time.  unpredictable failure are spontanious in nature occur without warning.  

HDD monitoring has been part of computing since the early 1990's. There are some critical indicators of HDDs failing such as lower than predicted drive spin speed, temperature spikes, unreadable drive sectors, and others. The prediction of unpredictable failure is specifically what this project attempts to uncover. I will try a number of different techniques and select the one that provides the most actionable information.  

The impetus for this project came from an interview for a data science job that involved conditinal maintinance in the military secctor.  As a retired Artillery operations chief, I quickly understood the value of having working equipment, and how interval based matintinance frustratingly took equiment 

### Workflow and predicted methodology
I will create this project in R, initallly, and migrate to python if needed.  The main driver for this decision is my comfortability with creating dashboards in RShiny.  I have access to the George Mason ARGO high performance computing cluster, and will use that for the full training of my model since my 2016 MacBook is woefully underpowered to deal with the size of the data I am working with.  The project will most likley be deployed through the free RStudio hosting page, but if it is too large, or unable to be done for some reason, I will find a different location to Host it.

This project will demonstrate my ability to perform a number of data science skills including:
  * working with larger amounts of data
  * High(ish) dimentional data
  * Dementiality reduction
  * Time series analysis
  * Statistical analysis
  * Anomaly detection
  * Feature engineering
  * Supervised classification
  * Unsupervised clusering
  * Dashboard creation
  
  ## Associated files
  [Google Docs Folder](https://drive.google.com/drive/folders/1vj-HbpvR-ZXppXnqF-QOqTa_jT-6x1hd?usp=sharing)
  
  ## Data
  The data is from backblaze and can be [found here](https://www.backblaze.com/b2/hard-drive-test-data.html#downloading-the-raw-hard-drive-test-data)
  
  ## Refernces
  Inital reading to learn about what the SMART monitoring system is came from [Wikipedia](https://en.wikipedia.org/wiki/S.M.A.R.T.) 
  
  Other resources that I use to complete this project will be addded over time.
  
