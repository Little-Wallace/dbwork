
/*ANT*/
DROP TRIGGER IF EXISTS ANT_IMPORT;
CREATE TRIGGER ANT_IMPORT
        BEFORE INSERT ON ANT
        FOR EACH ROW 
			 replace into ANT set CELLID=new.CELLID,ANTENNAHIGH=new. ANTENNAHIGH, HALFPANGLE=new. HALFPANGLE, MAXATTENUATION=new. MAXATTENUATION, GAIN =new. GAIN, ANTTILT =new. ANTTILT, PT =new. PT, MSPWR =new. MSPWR;


/*BSC*/
DROP TRIGGER IF EXISTS BSC_IMPORT;
CREATE TRIGGER BSC_IMPORT
        BEFORE  INSERT ON BSC
		FOR EACH ROW
			 replace into BSC set ID=new.ID.NAME=new.BSCNAME.BSCCOMPANY=new.BSCCOMPANY.LONGITUDE=new.LONGITUDE.LATITUDE=new.LATITUDE.MSCID=new.MSCID;


/*BTS*/
DROP TRIGGER IF EXISTS BTS_IMPORT;
CREATE TRIGGER BTS_IMPORT
        BEFORE  INSERT ON BTS
		FOR EACH ROW
			 replace into BTS set BTSNAME=new.BTSNAME.BSCID=new.BSCID.LONGITUDE=new.LONGITUDE.LATITUDE=new.LATITUDE.ALTITUDE=new.ALTITUDE.BTSCOMPANY=new.BTSCOMPANY.BTSPOWER =new.BTSPOWER;

/*CTRL*/
DROP TRIGGER IF EXISTS CTRL_IMPORT;
CREATE TRIGGER CTRL_IMPORT
        BEFORE  INSERT ON CTRL
        FOR EACH ROW
			 replace into CTRL set BSCID=new.BSCID.BTSNAME =new.BTSNAME;

/*CELL*/
DROP TRIGGER IF EXISTS CELL_IMPORT;
CREATE TRIGGER CELL_IMPORT
        BEFORE  INSERT ON CELL
        FOR EACH ROW
			 replace into CELL set ID =new.ID.BTSNAME =new.BTSNAME.AREANAME =new.AREANAME.LAC =new.LAC.LONGITUDE =new.LONGITUDE.LATITUDE =new.LATITUDE.DIRECTION =new.DIRECTION.RADIOUS =new.RADIOUS.BCCH =new.BCCH;

/*FPNT*/
DROP TRIGGER IF EXISTS FPNT_IMPORT;
CREATE TRIGGER FPNT_IMPORT
        BEFORE  INSERT ON FPNT
        FOR EACH ROW
			 replace into FPNT set CELLID =new.CELLID.FREQ =new.FREQ;


/*DISTR*/
DROP TRIGGER IF EXISTS DISTR_IMPORT;
CREATE TRIGGER DISTR_IMPORT
        BEFORE  INSERT ON DISTR
        FOR EACH ROW
			 replace into DISTR set CL_CELLID=new.CL_CELLID.FN_CELLID=new.FN_CELLID;


/*IDLE*/
DROP TRIGGER IF EXISTS IDLE_IMPORT;
CREATE TRIGGER IDLE_IMPORT
        BEFORE  INSERT ON IDLE
        FOR EACH ROW
			 replace into IDLE set CELLID =new.CELLID.IMEI=new.IMEI;


/*MS*/
DROP TRIGGER IF EXISTS MS_IMPORT;
CREATE TRIGGER MS_IMPORT
        BEFORE  INSERT ON MS
        FOR EACH ROW
			 replace into MS set IMEI=new.IMEI.MSISDN= new.MSISDN.Username=new.Username.MSCOMPANY=new.MSCOMPANY.gsmMspSense=new.gsmMspSense.gsmMsHeight=new.gsmMsHeight.gsmMspFout=new.gsmMspFout.MZONE =new.MZONE;


/*MSC*/
DROP TRIGGER IF EXISTS MSC_IMPORT;
CREATE TRIGGER MSC_IMPORT
        BEFORE  INSERT ON MSC
        FOR EACH ROW
			 replace into MSC set MscId=new.MscId.MscName= new.MscName.MscCompany=new.MscCompany.MscLongitude=new.MscLongitude.MscLatitude=new.MscLatitude.MscAltitude=new.MscAltitude;



/*phone*/
DROP TRIGGER IF EXISTS PHONE_IMPORT;
CREATE TRIGGER PHONE_IMPORT
        BEFORE  INSERT ON phone
        FOR EACH ROW
			 replace into phone set ntch=new.ntch.traff= new.traff.rate=new.rate.thtraff=new.thtraff.callnum=new.callnum.congsnum=new.congsnum.callcongs=new.callcongs;

/*TEST*/
DROP TRIGGER IF EXISTS TEST_IMPORT;
CREATE TRIGGER TEST_IMPORT
        BEFORE  INSERT ON TEST
        FOR EACH ROW
			 replace into TEST set KEYNUM=new.KEYNUM.CELLID= new.CELLID,LONGITUDE=new.LONGITUDE,LATITUDE=new.LATITUDE,RXLEV=new.RXLEV;



