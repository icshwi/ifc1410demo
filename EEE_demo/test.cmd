epicsEnvSet(PREFIX, "IFC1410DEMO")
epicsEnvSet(EPICS_CA_MAX_ARRAY_BYTES, 400000000)
# Set maximum number of samples
epicsEnvSet(NELM, 262144)

require ifc14edrv,0.0.1

ndsCreateDevice(ifc14, ${PREFIX}, card=0, fmc=1)

dbLoadRecords(IFC14AIChannelGroup.template, "PREFIX=${PREFIX},CH_GRP_ID=AI")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH0, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH1, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH2, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH3, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH4, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH5, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH6, NELM=${NELM}")
dbLoadRecords(IFC14AIChannel.template,      "PREFIX=${PREFIX},CH_GRP_ID=AI,CH_ID=CH7, NELM=${NELM}")

#ndsSetLogLevelInfo 5 
