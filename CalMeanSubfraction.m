function [subcrop_frac_AIM subcrop_frac_IMAGE1 subcrop_frac_IMAGE2 subcrop_frac_MAGPIE]=CalMeanSubfraction(countryMap,countryCode,subcrop_AIM,subcrop_IMAGE1,subcrop_IMAGE2,subcrop_MAGPIE,saveflag)
['Start Calculating for FAO country: ',num2str(countryCode)]
for i=1:86
    %%%
   temp1=reshape(subcrop_AIM.c3ann(:,:,i),1440,720);
   temp2=reshape(subcrop_AIM.c4ann(:,:,i),1440,720);
   temp3=reshape(subcrop_AIM.c3nfx(:,:,i),1440,720);
   sumtemp=temp1+temp2+temp3;
   landmask=(sumtemp>1e-4).*(countryMap==countryCode);
   landmask=find(landmask==1);
   
   
   subcrop_frac_AIM(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
   subcrop_frac_AIM(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
   subcrop_frac_AIM(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
   
   
   %%%%%%%%%%%%%
   temp1=reshape(subcrop_IMAGE1.c3ann(:,:,i),1440,720);
   temp2=reshape(subcrop_IMAGE1.c4ann(:,:,i),1440,720);
   temp3=reshape(subcrop_IMAGE1.c3nfx(:,:,i),1440,720);
   temp4=reshape(subcrop_IMAGE1.c3per(:,:,i),1440,720);
   temp5=reshape(subcrop_IMAGE1.c4per(:,:,i),1440,720);
   sumtemp=temp1+temp2+temp3+temp4+temp5;
   landmask=find(((sumtemp>1e-4).*(countryMap==countryCode))==1);
   
   subcrop_frac_IMAGE1(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE1(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE1(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE1(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE1(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 
   
   %%%%%%%%%%%%%%%%
   temp1=reshape(subcrop_IMAGE2.c3ann(:,:,i),1440,720);
   temp2=reshape(subcrop_IMAGE2.c4ann(:,:,i),1440,720);
   temp3=reshape(subcrop_IMAGE2.c3nfx(:,:,i),1440,720);
   temp4=reshape(subcrop_IMAGE2.c3per(:,:,i),1440,720);
   temp5=reshape(subcrop_IMAGE2.c4per(:,:,i),1440,720);
   sumtemp=temp1+temp2+temp3+temp4+temp5;
   landmask=find(((sumtemp>1e-4).*(countryMap==countryCode))==1);
   subcrop_frac_IMAGE2(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE2(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE2(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE2(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
   subcrop_frac_IMAGE2(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 
   
   %%%%%%%%%%%%%%%%%
   temp1=reshape(subcrop_MAGPIE.c3ann(:,:,i),1440,720);
   temp2=reshape(subcrop_MAGPIE.c4ann(:,:,i),1440,720);
   temp3=reshape(subcrop_MAGPIE.c3nfx(:,:,i),1440,720);
   temp4=reshape(subcrop_MAGPIE.c3per(:,:,i),1440,720);
   temp5=reshape(subcrop_MAGPIE.c4per(:,:,i),1440,720);
   sumtemp=temp1+temp2+temp3+temp4+temp5;
   landmask=find(((sumtemp>1e-4).*(countryMap==countryCode))==1);
   subcrop_frac_MAGPIE(i,1)=mean(temp1(landmask)./sumtemp(landmask)); 
   subcrop_frac_MAGPIE(i,2)=mean(temp2(landmask)./sumtemp(landmask)); 
   subcrop_frac_MAGPIE(i,3)=mean(temp3(landmask)./sumtemp(landmask)); 
   subcrop_frac_MAGPIE(i,4)=mean(temp4(landmask)./sumtemp(landmask)); 
   subcrop_frac_MAGPIE(i,5)=mean(temp5(landmask)./sumtemp(landmask)); 

end
if saveflag==1
    savepath='/Users/leima/Dropbox (GEL)/lma/Assign Task/Crop Management/Data/Result Jan19/';
    Countname=['_FAO_',num2str(countryCode)];
    save([savepath,'subcrop_frac_AIM',Countname,'.mat'],'subcrop_frac_AIM');
    save([savepath,'subcrop_frac_IMAGE1',Countname,'.mat'],'subcrop_frac_IMAGE1');
    save([savepath,'subcrop_frac_IMAGE2',Countname,'.mat'],'subcrop_frac_IMAGE2');
    save([savepath,'subcrop_frac_MAGPIE',Countname,'.mat'],'subcrop_frac_MAGPIE');
    ['Fnisished Saving: ',savepath]
end
['Finished Calculating for FAO country: ',num2str(countryCode)]
end