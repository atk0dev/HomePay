CREATE SEQUENCE GEN_PAYNAME;
ALTER SEQUENCE GEN_PAYNAME RESTART WITH 100;

SET TERM ^ ;

CREATE trigger tbl_payname_bi0 for tbl_payname
active before insert position 0
AS
begin
  /* Trigger text */
  new.id = gen_id(gen_payname, 1);
end
^

SET TERM ; ^

/* ----------------------------------------------------- */


CREATE TABLE TBL_USERS (
    ID INTEGER NOT NULL,
    USERNAME VARCHAR(50) NOT NULL,
    DESCRIPTION VARCHAR(1000));
ALTER TABLE TBL_USERS
ADD CONSTRAINT PK_TBL_USERS
PRIMARY KEY (ID);


CREATE SEQUENCE GEN_USER;

SET TERM ^ ;

CREATE trigger tbl_users_bi0 for tbl_users
active before insert position 0
AS
begin
  /* Trigger text */
  new.id = gen_id(gen_user, 1);
end
^

SET TERM ; ^

ALTER TABLE TBL_PAYNAME
ADD P_USERID INTEGER;

ALTER TABLE TBL_PAYNAME
ADD CONSTRAINT FK_TBL_PAYNAME_USERID
FOREIGN KEY (P_USERID)
REFERENCES TBL_USERS(ID);



ALTER TABLE EVMONPAY
ADD P_USERID INTEGER;

ALTER TABLE EVMONPAY
ADD CONSTRAINT FK_EVMONPAY_USERID
FOREIGN KEY (P_USERID)
REFERENCES TBL_USERS(ID);


ALTER TABLE TBL_PLAN
ADD USERID INTEGER;

ALTER TABLE TBL_PLAN
ADD CONSTRAINT FK_TBL_PLAN_USERID
FOREIGN KEY (USERID)
REFERENCES TBL_USERS(ID);


ALTER TABLE TBL_FACT
ADD USERID INTEGER;

ALTER TABLE TBL_FACT
ADD CONSTRAINT FK_TBL_FACT_USERID
FOREIGN KEY (USERID)
REFERENCES TBL_USERS(ID);

SET TERM ^ ;

CREATE OR ALTER PROCEDURE DELPLAN (
    userid integer,
    pid integer)
as
begin
  /* Procedure Text */
  delete from tbl_plan
  where tbl_plan.id = :pid
        and tbl_plan.userid = :userid;

  suspend;
end
^

SET TERM ; ^



SET TERM ^ ;

CREATE OR ALTER PROCEDURE ADDPLAN (
    userid integer,
    txt varchar(100),
    psumm numeric(15,2),
    pname integer,
    ptime integer)
as
begin
  /* Procedure Text */
  insert into tbl_plan (p_time, p_payname, p_summa, p_txt, userid)
  values (:ptime, :pname, :psumm, :txt, :userid);
  suspend;
end
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER PROCEDURE EDITPLAN (
    userid integer,
    txt varchar(100),
    psumm numeric(15,2),
    pname integer,
    ptime integer,
    pid integer)
as
begin
  /* Procedure Text */
  update tbl_plan
    set tbl_plan.p_time = :ptime,
        tbl_plan.p_payname = :pname,
        tbl_plan.p_summa = :psumm,
        tbl_plan.p_txt  = :txt
    where tbl_plan.id = :pid and tbl_plan.userid = :userid;
  suspend;
end
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER PROCEDURE ADDFACT (
    userid integer,
    psumm numeric(15,2),
    pname integer,
    ptime integer)
as
begin
  /* Procedure Text */
  insert into tbl_fact (p_time, p_payname, p_summa, userid)
  values (:ptime, :pname, :psumm, :userid);
  suspend;
end
^

SET TERM ; ^


SET TERM ^ ;

CREATE OR ALTER PROCEDURE DELFACT (
    userid integer,
    pid integer)
as
begin
  /* Procedure Text */
  delete from tbl_fact where tbl_fact.id = :pid and tbl_fact.userid=:userid;
  suspend;
end
^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER PROCEDURE EDITFACT (
    userid integer,
    psumm numeric(15,2),
    pname integer,
    ptime integer,
    pid integer)
as
begin
  /* Procedure Text */
  update tbl_fact
    set tbl_fact.p_time = :ptime,
        tbl_fact.p_payname = :pname,
        tbl_fact.p_summa = :psumm
    where tbl_fact.id = :pid and tbl_fact.userid = :userid;
  suspend;
end
^

SET TERM ; ^



CREATE OR ALTER VIEW V_PAY(
    P_TIME,
    P_YEAR,
    P_MONTH,
    P_MNAME,
    P_PAYNAME,
    P_NAME,
    P_PLAN,
    P_FACT,
    p_userid)
AS
select pl.p_time, tt.t_year, tt.t_month, m.txt, pl.p_payname, pn.p_name, pl.p_summa as splan, 0.0 as sfact, pl.userid
from tbl_plan pl, tbl_payname pn, tbl_time tt, tbl_month m
where pl.p_payname=pn.id and pl.p_time=tt.id and tt.t_month=m.id

union all

select ft.p_time, tt.t_year, tt.t_month, m.txt, ft.p_payname, pn.p_name, 0.0 as splan, ft.p_summa as sfact, ft.userid
from tbl_fact ft, tbl_payname pn, tbl_time tt, tbl_month m
where ft.p_payname=pn.id and ft.p_time=tt.id and tt.t_month=m.id
;

update tblsettings set paramvalue = '1.0.0.4' where paramname = 'dbversion';

