
Insert into cz_nab_pm_cc_offer_camp_xref (ID,OFFER_ID,CAMPAIGN_ID,PRODUCT_GROUP_ID,CAMPAIGN_NAME,START_DATE,END_DATE,BUNDLE_CODE,ALLOWED_PRODUCT_GROUP_ID,OBJECT_STATUS,OBJECT_VERSION_NUMBER,CREATED_BY,CREATION_DATE,UPDATED_DATE,UPDATED_BY) values ('VEXLRC#T1#BC01#null#20200101000000','VEXLRC','T1','CCG01',null,to_date('01-JAN-20','DD-MON-RR'),to_date('30-JAN-20','DD-MON-RR'),'BC01',null,'A',1,'X008290',to_date('16-MAR-18','DD-MON-RR'),to_date('16-MAR-18','DD-MON-RR'),'x005004');
Insert into cz_nab_pm_cc_offer_camp_xref (ID,OFFER_ID,CAMPAIGN_ID,PRODUCT_GROUP_ID,CAMPAIGN_NAME,START_DATE,END_DATE,BUNDLE_CODE,ALLOWED_PRODUCT_GROUP_ID,OBJECT_STATUS,OBJECT_VERSION_NUMBER,CREATED_BY,CREATION_DATE,UPDATED_DATE,UPDATED_BY) values ('VEXLRC#T2#BC01#null#20200203000000','VEXLRC','T2','CCG01',null,to_date('03-FEB-20','DD-MON-RR'),to_date('23-FEB-20','DD-MON-RR'),'BC01',null,'A',1,'X008290',to_date('16-MAR-18','DD-MON-RR'),to_date('16-MAR-18','DD-MON-RR'),'x005004');


select * from cz_nab_pm_cc_offer_camp_xref where campaign_id in ('T1', 'T2');
select * from cz_nab_pm_cc_offer_camp_xref 
where offer_id = 'VEXLRC' 
and bundle_code = 'BC01';

select * from flx_cs_branch_dates_b;
--delete from cz_nab_pm_cc_offer_camp_xref where campaign_id in ('T1', 'T2');
--delete from cz_nab_pm_cc_offer_camp_xref where id = 'VEXLRC#T2#BC01#null#20200203000000';

select * from FLX_PI_FATCA_DETAILS_B where party_id in (

select internal_party_id from flx_or_applicants where submission_id = 'SUB089100318316956');
select * from flx_pi_external_ids where party_id in (
select internal_party_id from flx_or_applicants where submission_id = 'SUB089100318316956');
select * from flx_pi_external_ids where party_id  = '121391199';
SELECT * FROM flx_pi_parties_b where party_id  = '121391199';

select * from FLX_PI_FATCA_DETAILS_B where party_id = '121391199';

select distinct party_type from flx_pi_parties_b where party_id = '121391199';
select ff.* from FLX_PI_FATCA_DETAILS_B ff, flx_pi_parties_b pp
where ff.party_id = pp.party_id 
and pp.party_type = 'LEG';

select * from flx_fw_config_var_b where prop_id = 'host.server.port';

select * from flx_wl_workitem where reference_number = '2018069563186674'; -- 2018069563186674 2018069563175595