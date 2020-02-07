--TRUNCATE 테스트
--1. REDO 로그를 생성하지 않기 때문에 삭제시 데이터 복구가 불가하다
--2. DML(SELECT, INSERT, UPDATE, DELETE)이 아니라 DDL로 분류
--   DDL로 분류(ROLLBACK이 불가)

--테스트 시나리오
--EMP테이블을 복사하여 EMP_COPY라는 이름으로 테이블 생성
--EMP_COPY 테이블 대상으로 TRUNCATE TABLE EMP_COPY 실행
--EMP_COPY 테이블에 데이터가 존재하는지 (정상적으로 삭제가 되었는지) 확인

--emp_copy 테이블 복사
--CREATE --> DDL (롤백 불가)
CREATE TABLE emp_copy As
SELECT
    *
FROM emp;

SELECT
    *
FROM EMP_COPY;

TRUNCATE TABLE emp_copy;
--TRUNCATE 명령어는 DDL 이기 때문에 ROLLBACK이 불가하다
--ROLLBACK 후 SELECT를 해보면 데이터가 복구 되지 않은 것을 알 수 있다

--고립화 레벨
--트랜잭션 : 여러 단계를 하나의 논리적인 단위로 묶는다

--DDL : Data Defination Language - 데이터 정의어
--객체를 생성하거나 수정, 삭제시 사용
--ROLLBACK 불가, 자동 COMMIT

--테이블 생성
--CREATE TABLE [스키마명(접속계정).]테이블명(
--              컬럼명 컬럼타입[DEFAULT 기본값],
--              컬럼명2 컬럼타입2[DEFAULT 기본값],....);

CREATE TABLE ranger(
        ranger_no NUMBER,
        ranger_nm VARCHAR2(50),
        reg_dt DATE DEFAULT SYSDATE
);
SELECT
    *
FROM ranger;

INSERT INTO ranger(ranger_no, ranger_nm) VALUES (1, 'brown');
 
--테이블 삭제
--DROP TABLE 테이블명
--롤백 불가
DROP TABLE ranger;

--데이터 타입
--문자열(varchar2 사용, char 타입 사용 지양)
--char(10) : 고정길이 문자열
--          해당 컬럼에 문자열을 5byte만 지정하면 나머지 5byte 공백으로 채워진다
--          'test' --> 'test     '
--         
--varchar(10) : 가변길이 문자열, 사이즈 1~4000byte
--              입력되는 값이 컬럼 사이즈보다 작아도 남은 공간을 공백으로 채우지 않는다

--숫자
--number(p, s) : p -> 전체 자리수(38), s -> 소수점 자리수
--range_no NUMBER -> NUMBER(38,0)과 같다
--integer -> NUMBER(38,0)과 같다

--날짜
--date : 일자와 시간 정보를 저장
--      7byte
--날짜 : date
--      varchar2(8) -> '20200207'
--      위 두개의 타입은 하나의 데이터당 1byte의 사이즈가 차이가 난다
--      데이터 양이 많아 지게 되면 무시할 수 없는 사이즈로, 설계시 타입에 대한 고려가 필요
--LOB(Large object)
--CLOB(Character Large object)
--      -->varchar로 담을 수 없는 사이즈의 문자열(4000byte 초과 문자열)
--      -->ex)웹 에디터에 생성된 html 코드
--BLOB(Byte Large object)
--      -->파일을 데이터베이스의 테이블에서 관리할 때
--      -->일반적으로 게시그 첨부파일을 table에 직접 관리하지 않고,
--          보통 첨부파일을 디스크의 특정 공간에 저장하고, 해당 [경로]만 문자열로 관리
--      -->파일이 매우 중요한 경우 : 고객 정보 사용 동의서 -> [파일]을 테이블에 저장

--제약조건 : 데이터가 무결성을 지키도록 위한 설정
--1.UNIQUE : 해당 컬럼의 값이 다른 행의 데이터와 중복되지 않도록 제약
--          ex)사번이 같은 사원이 있을 수가 없다
--2.NOT NULL :(CHECK 제약 조건) : 해당 컬럼의 값이 반드시 존재해야 하는 제약
--          ex)사번 컬럼이 NULL인 사원은 존재할 수가 없다
--              회원가입시 필수 입력사항(github - 이메일, 이름)
--3.PRIMARY KEY : UNIQUE + NOT NULL
--          ex)사번이 같은 사원이 있을 수가 없고, 사번이 없는 사원이 있을 수가 없다
--              PRIMARY KEY 제약 조건을 생성할 경우 해당 컬럼으로 UNIQUE INDEX가 생성된다
--4.FOREIGN KEY (참조무결성) : 해당 컬럼이 참조하는 다른 테이블의 값이 존재하는 행이 있어야 한다
--          ex)emp 테이블의 deptno 컬럼이 dept 테이블의 deptno 컬럼을 참조(관계)
--             emp 테이블의 deptno 컬럼에는 dept 테이블에 존재하지 않는 부서번호가 입력 될 수 없다
--             만약 dept 테이블의 부서번호가 10~40번만 존재 할 경우
--              ->emp 테이블에 새로운 행을 추가 하면서 부서번호 값을 99번으로 등록할 경우 : 행 추가 실패
--5.CHECK (값을 체크) : NOT NULL 제약 조건도 CHECK 제약에 포함
--                     emp 테이블에 job 컬럼에 들어 올 수 있는 값을 'SALESMAN', 'PRESIDENT', 'CLERK'
--제약조건 생성 방법 
--1.테이블을 생성하면서 컬럼에 기술
--2.테이블을 생성하면서 컬럼 기술 이후에 별도로 제약 조건을 기술
--3.테이블 생성과 별도로 추가적으로 제약조건을 추가

--CREATE TABLE 테이블명 (
--  컬럼1 컬럼 타입[제약조건]...,
--  [2.TABLE_CONSTRAINT] );

--ALTER TABLE emp....

--PRIMARY KEY 제약 조건을 컬럼 레벨로 생성
--단, 이 방식은 테이블의 key 컬럼이 복합 컬럼은 불가, 단일 컬럼일 때만 가능
CREATE TABLE dept_test (
             deptno NUMBER(2) PRIMARY KEY,
             dname VARCHAR2(14),
             loc VARCHAR2(13)
             );
INSERT INTO dept_test (deptno) VALUES (99); --정상적으로 실행;             
INSERT INTO dept_test (deptno) VALUES (99); --동일 값이 데이터에 저장;

--참고사항(기존 dept 테이블의 deptno컬럼에는 제약조건이 없기 때문에 값이 계속 들어간다)
INSERT INTO dept(deptno) VALUES (99);             
INSERT INTO dept(deptno) VALUES (99); 

--제약조건 확인 방법
--1.툴을 통해 확인
--  -->확인하고자 하는 테이블을 선택
--2.DICTIONARY를 통해 확인(user_tables)
--3.모델링(EXERD)를 통해 확인
SELECT
    *
FROM USER_CONSTRAINTS
WHERE table_name = 'DEPT_TEST';

SELECT
    *
FROM USER_CONS_COLUMNS
WHERE CONSTRAINT_NAME='SYS_C007085';
--제약조건 명을 기술하지 않을 경우 오라클에서 제약조건 이름을 임의로 부여
--가독성이 떨어지기 때문에 명명 규칙 지정하고 생성하는게 개발, 운영 관리에 유리
--PRIMARY KEY 제약조건 : PK_테이블명
--FOREIGN KEY 제약조건 : FK_대상테이블명_참조테이블명

DROP TABLE DEPT_TEST;
--컬럼 레벨의 제약조건을 생성하면서 제약조건 이름을 부여한다
--CONSTRAINT 제약조건명 제약조건타입(PRIMARY KEY)
CREATE TABLE dept_test (
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14),
             loc VARCHAR2(13)
             );
INSERT INTO dept_test(deptno) VALUES (99);
INSERT INTO dept_test(deptno) VALUES (99);

--1.테이블 생성시 컬럼 기술 이후 별도로 제약조건 기술
CREATE TABLE dept_test (
             deptno NUMBER(2),
             dname VARCHAR2(14),
             loc VARCHAR2(13),
             CONSTRAINT PK_dept_test PRIMARY KEY(deptno)
             );
--NOT NULL 제약조건 생성하기
--1.컬럼에 기술하기
--  -->단, 컬럼에 기술하면서 제약조건 이름을 부여하는건 불가
CREATE TABLE dept_test (
             deptno NUMBER(2),
             dname VARCHAR2(14) NOT NULL,
             loc VARCHAR2(13),
             
             CONSTRAINT PK_dept_test PRIMARY KEY(deptno)
             );
--NOT NULL 제약조건 확인
INSERT INTO dept_test(deptno, danme) VALUES(99,null);

--2.테이블 생성시 컬럼 기술 이후에 제약 조건추가
CREATE TABLE dept_test (
             deptno NUMBER(2),
             dname VARCHAR2(14),
             loc VARCHAR2(13),
             
             CONSTRAINT NN_dept_test_dname CHECK (deptno IS NOT NULL)
             );

--UNIQUE 제약 : 해당 컬럼에 중복되는 값이 들어오는 것을 방지, 단 NULL 가능
--PRIMARY KEY = UNIQUE + NOY NULL
--1.테이블 생성시 컬럼 레벨 UNIQUE 제약 조건
--dname 컬럼에 UNIQUE 제약조건
CREATE TABLE dept_test (
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14)UNIQUE,
             loc VARCHAR2(13)
             );
--dept_test 테이블의 dname 컬럼에 설정된 UNIQUE 제약조건을 확인
INSERT INTO dept_test VALUES(98,'DDIT','DAEJEON');
INSERT INTO dept_test VALUES(98,'DDIT','DAEJEON');
--2.테이블 생성시 컬럼에 제약조건 기술, 제약조건 이름 부여
CREATE TABLE dept_test (
             deptno NUMBER(2) CONSTRAINT PK_dept_test PRIMARY KEY,
             dname VARCHAR2(14)CONSTRAINT UK_dept_test_dname UNIQUE,
             loc VARCHAR2(13)
             );
--dept_test 테이블의 dname 컬럼에 설정된 UNIQUE 제약조건을 확인
INSERT INTO dept_test VALUES(98,'DDIT','DAEJEON');
INSERT INTO dept_test VALUES(99,'DDIT','DAEJEON');

--3.테이블 생성시 컬럼 기술이후 제약조건 생성 -복합 컬럼(deptno - dname) (UNIQUE)
CREATE TABLE dept_test (
        deptno NUMBER(2),
        dname VARCHAR2(14),
        loc VARCHAR2(13),
        
        CONSTRAINT UK_dept_test__deptno_dname UNIQUE (deptno, dname)
);
--복합 컬럼에 대한 unique 제약 확인 (deptno, dname)
INSERT INTO dept_test VALUES (99, 'ddit','daejeon');
INSERT INTO dept_test VALUES (98, 'ddit','daejeon');
INSERT INTO dept_test VALUES (98, 'ddit','대전');

--FOREIGN KEY 제약조건
--참조하는 테이블의 컬럼에 존재하는 값만 대상 테이블의 컬럼에 입력할 수 있도록 설정
--EX) emp 테이블에 deptno 컬럼에 값을 입력할 때, dept 테이블의 deptno 컬럼에 존재하는
--    부서번호만 입력할 수 있도록 설정
--    존재하지 않는 부서번호를 emp 테이블에서 사용하지 못하게끔 방지
--1.dept_test 테이블생성
--2.emp_test 테이블 생성
--    .emp_test 테이블 생성시 deptno 컬럼으로 dept.deptno 컬럼을 참조하도록 FK설정

DROP TABLE dept_test;
CREATE TABLE dept_test(
             deptno NUMBER(2),
             dname VARCHAR2(14),
             loc VARCHAR2(13),
             
             CONSTRAINT pk_dept_test PRIMARY KEY (deptno)
            );
             
DROP TABLE emp_test;           
CREATE TABLE emp_test(
            empno NUMBER(4),
            ename VARCHAR2(10),
            deptno NUMBER(2) REFERENCES dept_test (deptno) ,
            
            CONSTRAINT pk_emp_test PRIMARY KEY (empno)
            );
--데이터 입력 순서
--emp_test 테이블에 데이터를 입력하는게 가능한가?
--지금상황 : (dept_test, emp_test 테이블을 방금 생성 -> 데이터가 존재하지 않을 때)
INSERT INTO emp_test VALUES (9999, 'brown',null); --FK이 설정된 컬럼에 NULL은 허용
INSERT INTO emp_test VALUES (9998, 'sally',10); --10번 부서가 dept_test 테이블에 존재하지 않아서 에러

--dept_test테이블에 데이터를 준비
INSERT INTO dept_test VALUES (99, 'ddit','daejeon'); 
INSERT INTO emp_test VALUES (9998, 'sally', 99);  --99번 부서가 존재하므로 실행                                        
INSERT INTO emp_test VALUES (9998, 'sally', 10);  --10번 부서가 존재하지 않으므로 에러

--테이블 생성시 컬럼 기술 이후 FOREIGN KEY 제약조건 생성
DROP TABLE dept_test;
DROP TABLE emp_test;

CREATE TABLE dept_test(
             deptno NUMBER(2),
             dname VARCHAR2(14),
             loc VARCHAR2(13),
             
             CONSTRAINT pk_dept_test PRIMARY KEY (deptno)
            );
INSERT INTO dept_test VALUES (99, 'ddit','daejeon');             

CREATE TABLE emp_test(
            empno NUMBER(4),
            ename VARCHAR2(14),
            deptno NUMBER(2),
            CONSTRAINT FK_emp_test_dept_test FOREIGN KEY (deptno) REFERENCES dept_test(deptno)
            );
INSERT INTO emp_test VALUES(9999,'brown',10); --dept_test 테이블에 10번 부서가 존재하지 않아 에러            
INSERT INTO emp_test VALUES(9999,'brown',99); --dept_test 테이블에 99번 부서가 존재하므로 실행

