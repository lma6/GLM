% databasepath='/Users/leima/Dropbox (GEL)/lma/Assign Task/Crop Management/Data/';
% ncid_AIM=netcdf.open([databasepath,'LUH2_AIM.nc']);
% ncid_LUH2_GCAM_gcam_ssp4_34=netcdf.open([databasepath,'LUH2_GCAM_gcam_ssp4_34.nc']);
% ncid_LUH2_GCAM_gcam_ssp4_60=netcdf.open([databasepath,'LUH2_GCAM_gcam_ssp4_60.nc']);
% ncid_LUH2_IMAGE_SSP1_RCP26=netcdf.open([databasepath,'LUH2_IMAGE_SSP1_RCP2.6.nc']);
% ncid_LUH2_IMAGE_SSP1_RCP60=netcdf.open([databasepath,'LUH2_IMAGE_SSP1_RCP6.0.nc']);
% ncid_LUH2_MAGPIE=netcdf.open([databasepath,'LUH2_MAGPIE.nc']);
% ncid_LUH2_MESSAGE_scenRCP4p5_SPA0_SSP2=netcdf.open([databasepath,'LUH2_MESSAGE_scenRCP4p5_SPA0_SSP2.nc']);
% 
% %%
% subcrop_AIM=struct('c3ann',zeros(1440,720,86),'c3nfx',zeros(1440,720,86),'c4ann',zeros(1440,720,86));
% subcrop_GCAM1=struct('cropland',zeros(1440,720,86));
% subcrop_GCAM2=struct('cropland',zeros(1440,720,86));
% subcrop_IMAGE1=struct('c3ann',zeros(1440,720,86),'c3nfx',zeros(1440,720,86),'c4ann',zeros(1440,720,86),'c3per',zeros(1440,720,86),'c4per',zeros(1440,720,86));
% subcrop_IMAGE2=struct('c3ann',zeros(1440,720,86),'c3nfx',zeros(1440,720,86),'c4ann',zeros(1440,720,86),'c3per',zeros(1440,720,86),'c4per',zeros(1440,720,86));
% subcrop_MAGPIE=struct('c3ann',zeros(1440,720,86),'c3nfx',zeros(1440,720,86),'c4ann',zeros(1440,720,86),'c3per',zeros(1440,720,86),'c4per',zeros(1440,720,86));
% subcrop_MESSAGE=struct('cropland',zeros(1440,720,86));
% 
% %%
% subcrop_AIM.c3ann=netcdf.getVar(ncid_AIM,netcdf.inqVarID(ncid_AIM,'c3ann'));
% subcrop_AIM.c3nfx=netcdf.getVar(ncid_AIM,netcdf.inqVarID(ncid_AIM,'c3nfx'));
% subcrop_AIM.c4ann=netcdf.getVar(ncid_AIM,netcdf.inqVarID(ncid_AIM,'c4ann'));
% 
% subcrop_GCAM1.cropland=netcdf.getVar(ncid_LUH2_GCAM_gcam_ssp4_34,netcdf.inqVarID(ncid_LUH2_mmGCAM_gcam_ssp4_34,'cropland'));
% subcrop_GCAM2.cropland=netcdf.getVar(ncid_LUH2_GCAM_gcam_ssp4_60,netcdf.inqVarID(ncid_LUH2_GCAM_gcam_ssp4_60,'cropland'));
% 
% subcrop_IMAGE1.c3ann=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP26,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP26,'c3ann'));
% subcrop_IMAGE1.c4ann=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP26,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP26,'c4ann'));
% subcrop_IMAGE1.c3per=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP26,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP26,'c3per'));
% subcrop_IMAGE1.c4per=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP26,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP26,'c4per'));
% subcrop_IMAGE1.c3nfx=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP26,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP26,'c3nfx'));
% 
% subcrop_IMAGE2.c3ann=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP60,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP60,'c3ann'));
% subcrop_IMAGE2.c4ann=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP60,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP60,'c4ann'));
% subcrop_IMAGE2.c3per=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP60,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP60,'c3per'));
% subcrop_IMAGE2.c4per=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP60,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP60,'c4per'));
% subcrop_IMAGE2.c3nfx=netcdf.getVar(ncid_LUH2_IMAGE_SSP1_RCP60,netcdf.inqVarID(ncid_LUH2_IMAGE_SSP1_RCP60,'c3nfx'));
% 
% subcrop_MAGPIE.c3ann=netcdf.getVar(ncid_LUH2_MAGPIE,netcdf.inqVarID(ncid_LUH2_MAGPIE,'c3ann'));
% subcrop_MAGPIE.c4ann=netcdf.getVar(ncid_LUH2_MAGPIE,netcdf.inqVarID(ncid_LUH2_MAGPIE,'c4ann'));
% subcrop_MAGPIE.c3per=netcdf.getVar(ncid_LUH2_MAGPIE,netcdf.inqVarID(ncid_LUH2_MAGPIE,'c3per'));
% subcrop_MAGPIE.c4per=netcdf.getVar(ncid_LUH2_MAGPIE,netcdf.inqVarID(ncid_LUH2_MAGPIE,'c4per'));
% subcrop_MAGPIE.c3nfx=netcdf.getVar(ncid_LUH2_MAGPIE,netcdf.inqVarID(ncid_LUH2_MAGPIE,'c3nfx'));
% 
% subcrop_MESSAGE.cropland=netcdf.getVar(ncid_LUH2_MESSAGE_scenRCP4p5_SPA0_SSP2,netcdf.inqVarID(ncid_LUH2_MESSAGE_scenRCP4p5_SPA0_SSP2,'cropland'));
% 
% basepath1='/Users/leima/Dropbox (GEL)/lma/Assign Task/Pasture Anomaly/Data/Forest Area After Friday Dis/';
% countryMap=importdata([basepath1,'countryboundary.txt']);
% countryMap=countryMap';
saveflag=1;
[subcrop_frac_AIM_USA subcrop_frac_IMAGE1_USA subcrop_frac_IMAGE2_USA subcrop_frac_MAGPIE_USA]=CalMeanSubfraction(countryMap,231,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);
[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,41,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);
[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,100,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);
[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,21,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);
[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,10,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);
[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,33,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);

[subcrop_frac_AIM_CHN subcrop_frac_IMAGE1_CHN subcrop_frac_IMAGE2_CHN subcrop_frac_MAGPIE_CHN]=CalMeanSubfraction(countryMap,185,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag);

figure;plot(2015:2100,subcrop_frac_AIM_CHN);hold all;plot(2015:2100,subcrop_frac_AIM_USA,'--');
%%
% for i=1:86
%     %%%
%    temp1=reshape(subcrop_AIM.c3ann(:,:,i),1440,720);
%    temp2=reshape(subcrop_AIM.c4ann(:,:,i),1440,720);
%    temp3=reshape(subcrop_AIM.c3nfx(:,:,i),1440,720);
%    sumtemp=temp1+temp2+temp3;
%    landmask=find(sumtemp>1e-4);
%    
%    subcrop_frac_AIM(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
%    subcrop_frac_AIM(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
%    subcrop_frac_AIM(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
%    
%    %%%%%%%%%%%%%
%    subcrop_frac_GCAM1(i,1)=sum(sum(reshape(subcrop_GCAM1.cropland(:,:,i),1440,720),2),1); 
%    subcrop_frac_GCAM2(i,1)=sum(sum(reshape(subcrop_GCAM2.cropland(:,:,i),1440,720),2),1); 
%    
%    %%%%%%%%%%%%%
%    temp1=reshape(subcrop_IMAGE1.c3ann(:,:,i),1440,720);
%    temp2=reshape(subcrop_IMAGE1.c4ann(:,:,i),1440,720);
%    temp3=reshape(subcrop_IMAGE1.c3nfx(:,:,i),1440,720);
%    temp4=reshape(subcrop_IMAGE1.c3per(:,:,i),1440,720);
%    temp5=reshape(subcrop_IMAGE1.c4per(:,:,i),1440,720);
%    sumtemp=temp1+temp2+temp3+temp4+temp5;
%    landmask=find(sumtemp>1e-4);
%    subcrop_frac_IMAGE1(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE1(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE1(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE1(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE1(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 
%    
%    %%%%%%%%%%%%%%%%
%    temp1=reshape(subcrop_IMAGE2.c3ann(:,:,i),1440,720);
%    temp2=reshape(subcrop_IMAGE2.c4ann(:,:,i),1440,720);
%    temp3=reshape(subcrop_IMAGE2.c3nfx(:,:,i),1440,720);
%    temp4=reshape(subcrop_IMAGE2.c3per(:,:,i),1440,720);
%    temp5=reshape(subcrop_IMAGE2.c4per(:,:,i),1440,720);
%    sumtemp=temp1+temp2+temp3+temp4+temp5;
%    landmask=find(sumtemp>1e-4);
%    subcrop_frac_IMAGE2(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE2(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE2(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE2(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
%    subcrop_frac_IMAGE2(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 
%    
%    %%%%%%%%%%%%%%%%%
%    temp1=reshape(subcrop_MAGPIE.c3ann(:,:,i),1440,720);
%    temp2=reshape(subcrop_MAGPIE.c4ann(:,:,i),1440,720);
%    temp3=reshape(subcrop_MAGPIE.c3nfx(:,:,i),1440,720);
%    temp4=reshape(subcrop_MAGPIE.c3per(:,:,i),1440,720);
%    temp5=reshape(subcrop_MAGPIE.c4per(:,:,i),1440,720);
%    sumtemp=temp1+temp2+temp3+temp4+temp5;
%    landmask=find(sumtemp>1e-4);
%    subcrop_frac_MAGPIE(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
%    subcrop_frac_MAGPIE(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
%    subcrop_frac_MAGPIE(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
%    subcrop_frac_MAGPIE(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
%    subcrop_frac_MAGPIE(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 
%    
%    %%%%%%%%%%%%%%%%%%%%
%    subcrop_frac_MESSAGE(i,1)=sum(sum(reshape(subcrop_MESSAGE.cropland(:,:,i),1440,720),2),1); 
%    i
% end

