SELECT
    *
FROM cycle;
--1번 고객이 100번 제품을 월요일날 1개 애음
--2020년 2월에 대한 일실적을 생성
--1. 2020년 2월의 월요일에 대해 일실적 생성
--1 100 2 1 한 행이 다음 4개의 행으로 생성 되어야 한다
--1 100 20200203 1
--1 100 20200210 1
--1 100 20200217 1
--1 100 20200224 1

SELECT TO_CHAR(TO_DATE('202002' || '01', 'yyyymmdd') + (LEVEL -1),'YYYYMMDD') dt,
        TO_CHAR(TO_DATE('202002' || '01', 'yyyymmdd') + (LEVEL -1), 'D') d
FROM dual
CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE('202002' || '01', 'YYYYMMDD')),'DD');

SELECT
    *
FROM daily;

--실습4번
CREATE OR REPLACE PROCEDURE create_daily_sales(p_yyyymm IN daily.dt%TYPE) IS
    TYPE cal_row IS RECORD ( --한 행의 값만 저장
        dt VARCHAR2(8),
        d NUMBER);
    TYPE cal_tab IS TABLE OF cal_row INDEX BY BINARY_INTEGER; --테이블로 여러 행 저장
    v_cal_tab cal_tab;
BEGIN
    SELECT TO_CHAR(TO_DATE(p_yyyymm || '01', 'yyyymmdd') + (LEVEL -1),'YYYYMMDD') dt,
        TO_CHAR(TO_DATE(p_yyyymm || '01', 'yyyymmdd') + (LEVEL -1), 'D') d
        BULK COLLECT INTO v_cal_tab
    FROM dual
    CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE(p_yyyymm || '01', 'YYYYMMDD')),'DD');

    --일실적 데이터를 생성하기 전에 기존에 생성된 데이터를 삭제
    DELETE daily
    WHERE dt LIKE p_yyyymm || '%';
    --애음주기 정보를 조회(FOR - CURSOR)
    FOR daily_row IN (SELECT * FROM cycle) LOOP
            DBMS_OUTPUT.PUT_LINE(daily_row.cid || ' ' || daily_row.pid || 
                                 daily_row.day || ' ' || daily_row.cnt);
        FOR i IN 1..v_cal_tab.COUNT LOOP
            
            --OUTER LOOP(애음주기)에서 읽은 요일이랑 INNER LOOP(달력)에서 읽은 요일이 같은 데이터 체크
            IF daily_row.day = v_cal_tab(i).d
            THEN INSERT INTO daily VALUES (daily_row.cid, daily_row.pid, 
                                            v_cal_tab(i).dt, daily_row.cnt);  
                DBMS_OUTPUT.PUT_LINE(v_cal_tab(i).dt || ' ' || v_cal_tab(i).d);
            END IF;            
        END LOOP;
    END LOOP;
END;
/

EXEC create_daily_sales('202002');

--create_daily_sales 프로시저에서 건별로 insert하던 로직은 INSERT SELECT구문, 
--ONE-QUERY형태로 변형하여 속도를 단축
DELETE daily
WHERE dt LIKE '202002%';

INSERT INTO daily
SELECT cycle.cid, cycle.pid, cal.dt, cycle.cnt
FROM cycle,
    (SELECT  TO_CHAR(TO_DATE('202002','YYYYMM') + (LEVEL -1), 'YYYYMMDD') dt,
            TO_CHAR(TO_DATE('202002','YYYYMM') + (LEVEL -1), 'D') d
     FROM dual
     CONNECT BY LEVEL <= TO_CHAR(LAST_DAY(TO_DATE('202002', 'YYYYMM')),'DD')) cal
WHERE cycle.day = cal.d;

SELECT
    *
FROM daily; 

--PL/SQL 에서는 SELECT 결과가 없어도 예외 : NO_DATA_FOUND
DECLARE
    v_dname dept.dname%TYPE;
BEGIN
    SELECT dname INTO v_dname
    FROM dept;
    --WHERE deptno = 70;
EXCEPTION
    WHEN no_data_found THEN
         DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND');
    WHEN too_many_rows THEN
         DBMS_OUTPUT.PUT_LINE('TOO_MANY_ROWS');
END;
/

--사용자 정의 예외 생성
--NO_DATA_FOUND ==> 우리가 직접 만든 사용자 예외로 변경하여 새롭게 예외를 던지는 예제

DECLARE
    no_emp EXCEPTION;
    v_ename emp.ename%TYPE;
BEGIN
    BEGIN
        SELECT ename INTO v_ename
        FROM emp
        WHERE empno = 8000;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE no_emp;
    END;
EXCEPTION
    WHEN no_emp THEN
        DBMS_OUTPUT.PUT_LINE('no_emp');
END;
/

--emp테이블을 통해서는 부서이름을 알 수가 없다 (부서이름 dept테이블에 존재)
--> 1. join
--  2. 서브쿼리 - 스칼라 서브쿼리(SELECT)
--  3. function
SELECT *
FROM emp e, dept d
WHERE e.deptno = d.deptno;

SELECT emp.*, (SELECT dname 
               FROM dept
               WHERE dept.deptno = emp.deptno) dname
FROM emp;               

--부서번호를 인자받고 부서명을 리턴해주는 함수 생성
--getDeptName();

CREATE OR REPLACE FUNCTION 
    getDeptName(p_deptno dept.deptno%TYPE) RETURN VARCHAR2 IS
    v_dname dept.dname%TYPE;
    
BEGIN
    SELECT dname INTO v_dname
    FROM dept
    WHERE deptno = p_deptno;
    
    RETURN v_dname;
END;
/

SELECT emp.*, getDeptName(emp.deptno) dname
FROM emp;
desc emp;
--getEmpName 함수를 생성
--직원번호를 인자로 하고 해당 직원의 이름을 리턴해주는 함수 생성
CREATE OR REPLACE FUNCTION
    getEmpName (p_empno emp.empno%TYPE) RETURN VARCHAR2 IS
    v_ename emp.ename%TYPE;
BEGIN
    SELECT ename INTO v_ename
    FROM emp
    WHERE empno = p_empno;
    
    RETURN v_ename;
END;
/

SELECT getEmpName(7369)
FROM dual;

SELECT LPAD(' ', (LEVEL -1) * 4) || deptnm
FROM dept_h
START WITH deptcd = 'dept0'
CONNECT BY PRIOR deptcd = p_deptcd;

SELECT getPadding() || deptnm
FROM dept_h
START WITH deptcd = 'dept0'
CONNECT BY PRIOR deptcd = p_deptcd;

desc dept_h;
CREATE OR REPLACE FUNCTION
    getPadding(p_level NUMBER) RETURN VARCHAR2 IS
    v_deptnm dept_h.deptnm%TYPE;
BEGIN
    SELECT LPAD(' ', (LEVEL -1) * 4) || deptnm INTO v_deptnm
    FROM dept_h
    WHERE level = p_level;
    
    RETURN v_deptnm;
END;
/

CREATE OR REPLACE FUNCTION
    getPadding(p_lv NUMBER, p_indent NUMBER, p_padding VARCHAR2) RETURN VARCHAR2 IS
    v_padding VARCHAR2(200);
BEGIN
    SELECT LPAD(' ', (p_lv -1) * p_indent, p_padding) INTO v_padding
    FROM dual;
    
    RETURN v_padding;
END;
/

SELECT getPadding(LEVEL, 5, '-') || deptnm
FROM dept_h
START WITH deptcd = 'dept0'
CONNECT BY PRIOR deptcd = p_deptcd;

SELECT
    *
FROM TABLE(dbms_xplan.display);

--PACKAGE - 연관된 PL/SQL블록을 묶어주는 오라클 객체
--선언부
--몸체(구현부)로 구성
--getEmpName, getDeptName ==> NAMES 패키지에 담는다
CREATE OR REPLACE PACKAGE names AS 
    FUNCTION getEmpName(p_empno emp.empno%TYPE) RETURN VARCHAR2;
    FUNCTION getDeptName(p_deptno dept.deptno%TYPE) RETURN VARCHAR2;
END names;
/

CREATE OR REPLACE PACKAGE BODY names AS
       FUNCTION getDeptName(p_deptno dept.deptno%TYPE) RETURN VARCHAR2 AS
        v_dname dept.dname%TYPE; 
    BEGIN
        SELECT dname INTO v_dname
        FROM dept
        WHERE deptno = p_deptno;
        
        RETURN v_dname;
    END;   
         FUNCTION getEmpName(p_emptno emp.empno%TYPE) RETURN VARCHAR2 AS
        v_ename emp.ename%TYPE;    
    BEGIN
        SELECT ename INTO v_ename
        FROM emp
        WHERE empno = p_empno;
    
        RETURN v_ename;
    END;
END;
/