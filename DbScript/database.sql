/******************************************************************************/
/***          Generated by IBExpert 2008.04.04 20.12.2011 13:19:04          ***/
/******************************************************************************/

/******************************************************************************/
/***                                Domains                                 ***/
/******************************************************************************/



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR GEN_FACTPAY;
CREATE GENERATOR GEN_PLANPAY;
CREATE GENERATOR GEN_TIME;
/******************************************************************************/
/***                               Exceptions                               ***/
/******************************************************************************/

/******************************************************************************/
/***                               Procedures                               ***/
/******************************************************************************/

SET TERM ^ ;

CREATE PROCEDURE ADDFACT(
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER)
AS
BEGIN
  EXIT;
END^


CREATE PROCEDURE ADDPLAN(
    TXT VARCHAR(100),
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER)
AS
BEGIN
  EXIT;
END^


CREATE PROCEDURE DELFACT(
    PID INTEGER)
AS
BEGIN
  EXIT;
END^


CREATE PROCEDURE DELPLAN(
    PID INTEGER)
AS
BEGIN
  EXIT;
END^


CREATE PROCEDURE EDITFACT(
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER,
    PID INTEGER)
AS
BEGIN
  EXIT;
END^


CREATE PROCEDURE EDITPLAN(
    TXT VARCHAR(100),
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER,
    PID INTEGER)
AS
BEGIN
  EXIT;
END^


SET TERM ; ^



/******************************************************************************/
/***                            Tables and Views                            ***/
/******************************************************************************/

CREATE TABLE EVMONPAY (
    ID INTEGER NOT NULL);


CREATE TABLE TBL_FACT (
    ID INTEGER NOT NULL,
    P_TIME INTEGER NOT NULL,
    P_PAYNAME INTEGER NOT NULL,
    P_SUMMA NUMERIC(15,2));


CREATE TABLE TBL_MONTH (
    ID INTEGER NOT NULL,
    TXT VARCHAR(20) CHARACTER SET WIN1251 NOT NULL COLLATE WIN1251);


CREATE TABLE TBL_PAYNAME (
    ID INTEGER NOT NULL,
    P_NAME VARCHAR(50) CHARACTER SET WIN1251 NOT NULL COLLATE WIN1251,
    P_DESCR VARCHAR(100) CHARACTER SET WIN1251 COLLATE WIN1251);


CREATE TABLE TBL_PLAN (
    ID INTEGER NOT NULL,
    P_TIME INTEGER NOT NULL,
    P_PAYNAME INTEGER NOT NULL,
    P_SUMMA NUMERIC(15,2),
    P_TXT VARCHAR(100) CHARACTER SET WIN1251 COLLATE WIN1251);


CREATE TABLE TBL_TIME (
    ID INTEGER NOT NULL,
    T_MONTH INTEGER NOT NULL,
    T_YEAR INTEGER NOT NULL);


CREATE TABLE TBLSETTINGS (
    ID INTEGER NOT NULL,
    PARAMNAME VARCHAR(100) CHARACTER SET WIN1251 COLLATE WIN1251,
    PARAMVALUE VARCHAR(300) CHARACTER SET WIN1251 COLLATE WIN1251);


CREATE VIEW V_PAY(
    P_TIME,
    P_YEAR,
    P_MONTH,
    P_MNAME,
    P_PAYNAME,
    P_NAME,
    P_PLAN,
    P_FACT)
AS
select pl.p_time, tt.t_year, tt.t_month, m.txt, pl.p_payname, pn.p_name, pl.p_summa as splan, 0.0 as sfact
from tbl_plan pl, tbl_payname pn, tbl_time tt, tbl_month m
where pl.p_payname=pn.id and pl.p_time=tt.id and tt.t_month=m.id

union all

select ft.p_time, tt.t_year, tt.t_month, m.txt, ft.p_payname, pn.p_name, 0.0 as splan, ft.p_summa as sfact
from tbl_fact ft, tbl_payname pn, tbl_time tt, tbl_month m
where ft.p_payname=pn.id and ft.p_time=tt.id and tt.t_month=m.id
;



/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/


ALTER TABLE EVMONPAY ADD CONSTRAINT PK_EVMONPAY PRIMARY KEY (ID);
ALTER TABLE TBL_FACT ADD CONSTRAINT PK_TBL_FACT PRIMARY KEY (ID);
ALTER TABLE TBL_MONTH ADD CONSTRAINT PK_TBL_MONTH PRIMARY KEY (ID);
ALTER TABLE TBL_PAYNAME ADD CONSTRAINT PK_TBL_PAYNAME PRIMARY KEY (ID);
ALTER TABLE TBL_PLAN ADD CONSTRAINT PK_TBL_PLAN PRIMARY KEY (ID);
ALTER TABLE TBL_TIME ADD CONSTRAINT PK_TBL_TIME PRIMARY KEY (ID);
ALTER TABLE TBLSETTINGS ADD CONSTRAINT PK_TBLSETTINGS PRIMARY KEY (ID);

/******************************************************************************/
/***                           Unique constraints                           ***/
/******************************************************************************/



/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/


ALTER TABLE EVMONPAY ADD CONSTRAINT FK_EVMONPAY FOREIGN KEY (ID) REFERENCES TBL_PAYNAME (ID);
ALTER TABLE TBL_FACT ADD CONSTRAINT FK_TBL_FACT_PAYNAME FOREIGN KEY (P_PAYNAME) REFERENCES TBL_PAYNAME (ID);
ALTER TABLE TBL_FACT ADD CONSTRAINT FK_TBL_FACT_TIME FOREIGN KEY (P_TIME) REFERENCES TBL_TIME (ID);
ALTER TABLE TBL_PLAN ADD CONSTRAINT FK_TBL_PLAN_PAYNAME FOREIGN KEY (P_PAYNAME) REFERENCES TBL_PAYNAME (ID);
ALTER TABLE TBL_PLAN ADD CONSTRAINT FK_TBL_PLAN_TIME FOREIGN KEY (P_TIME) REFERENCES TBL_TIME (ID);
ALTER TABLE TBL_TIME ADD CONSTRAINT FK_TBL_TIME_MONTH FOREIGN KEY (T_MONTH) REFERENCES TBL_MONTH (ID);

/******************************************************************************/
/***                           Check constraints                            ***/
/******************************************************************************/



/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/



/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/

SET TERM ^ ;

CREATE TRIGGER TBL_FACT_BI0 FOR TBL_FACT
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* Trigger text */
  new.id = gen_id(gen_factpay, 1);
end
^

CREATE TRIGGER TBL_PLAN_BI0 FOR TBL_PLAN
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* Trigger text */
  new.id = gen_id(gen_planpay, 1);
end
^

CREATE TRIGGER TBL_TIME_BI0 FOR TBL_TIME
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  /* Trigger text */
    new.id = gen_id(gen_time, 0);
end
^

SET TERM ; ^

/******************************************************************************/
/***                               Procedures                               ***/
/******************************************************************************/

SET TERM ^ ;

ALTER PROCEDURE ADDFACT(
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER)
AS
begin
  /* Procedure Text */
  insert into tbl_fact (p_time, p_payname, p_summa)
  values (:ptime, :pname, :psumm);
  suspend;
end^


ALTER PROCEDURE ADDPLAN(
    TXT VARCHAR(100),
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER)
AS
begin
  /* Procedure Text */
  insert into tbl_plan (p_time, p_payname, p_summa, p_txt)
  values (:ptime, :pname, :psumm, :txt);
  suspend;
end^


ALTER PROCEDURE DELFACT(
    PID INTEGER)
AS
begin
  /* Procedure Text */
  delete from tbl_fact where tbl_fact.id = :pid;
  suspend;
end^


ALTER PROCEDURE DELPLAN(
    PID INTEGER)
AS
begin
  /* Procedure Text */
  delete from tbl_plan where tbl_plan.id = :pid;
  suspend;
end^


ALTER PROCEDURE EDITFACT(
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER,
    PID INTEGER)
AS
begin
  /* Procedure Text */
  update tbl_fact
    set tbl_fact.p_time = :ptime,
        tbl_fact.p_payname = :pname,
        tbl_fact.p_summa = :psumm
    where tbl_fact.id = :pid;
  suspend;
end^


ALTER PROCEDURE EDITPLAN(
    TXT VARCHAR(100),
    PSUMM NUMERIC(15,2),
    PNAME INTEGER,
    PTIME INTEGER,
    PID INTEGER)
AS
begin
  /* Procedure Text */
  update tbl_plan
    set tbl_plan.p_time = :ptime,
        tbl_plan.p_payname = :pname,
        tbl_plan.p_summa = :psumm,
        tbl_plan.p_txt  = :txt
    where tbl_plan.id = :pid;
  suspend;
end^


SET TERM ; ^



/******************************************************************************/
/***                          Object descriptions                           ***/
/******************************************************************************/

DESCRIBE FIELD ID TABLE EVMONPAY 'Pay name ID';

