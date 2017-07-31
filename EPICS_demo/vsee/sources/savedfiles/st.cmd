#!./bin/linux-ppc64e6500/ifc14edrv

#- You may have to change ifc14edrv to something else
#- everywhere it appears in this file

< envPaths

epicsEnvSet(PREFIX, "IFC1410DEMO")
epicsEnvSet(EPICS_CA_MAX_ARRAY_BYTES, 400000000)
epicsEnvSet(NELM, 262144)

## Register all support components
#dbLoadDatabase("dbd/ifc14edrv.dbd",0,0)
#ifc14edrv_registerRecordDeviceDriver(pdbbase) 

ndsCreateDevice(ifc14, $(PREFIX), card=0, fmc=1)

## Load record instances
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannelGroup.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI")

dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH0, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH1, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH2, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH3, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH4, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH5, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH6, NELM=${NELM}")
dbLoadRecords(/opt/vsee/iocs/ifc14edrv/db/IFC14AIChannel.template, "PREFIX=${PREFIX}, CH_GRP_ID=AI, CH_ID=CH7, NELM=${NELM}")

iocInit()

