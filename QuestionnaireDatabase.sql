-- 一个答卷一份表，一个题目一个记录
-- int 最多存9位数，long 最多存18位数
DROP TABLE IF EXISTS QuestionnaireDatabase;
CREATE DATABASE QuestionnaireDatabase;
USE QuestionnaireDatabase;

DROP TABLE IF EXISTS QuestionnaireList;
DROP TABLE IF EXISTS QuestionList;
DROP TABLE IF EXISTS ChoiceList;


CREATE TABLE QuestionnaireList(
    Uid BIGINT PRIMARY KEY AUTO_INCREMENT,
    QuestionnaireName VARCHAR(64) NOT NULL,
    QuestionnaireData VARCHAR(4096)DEFAULT NULL,
    QuestionnaireDescription VARCHAR(512) DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;


CREATE TABLE QuestionList(
    Uid                 BIGINT PRIMARY KEY AUTO_INCREMENT,
    Info                BIGINT        DEFAULT NULL,
    QuestionName        VARCHAR(1024) NOT NULL,
    QuestionDescription VARCHAR(256)  DEFAULT NULL,
    QuestionAnswer      BIGINT DEFAULT NULL,
    QuestionLink        BIGINT DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE ChoiceList(
    Uid                 BIGINT PRIMARY KEY AUTO_INCREMENT,
    Info                BIGINT DEFAULT NULL,    -- Info includes Links
    ChoiceName          CHAR(1024) NOT NULL,
    ChoiceDescription   CHAR(256) DEFAULT NULL,
    ChoiceData          CHAR(1024) DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE LinkList(
    Uid BIGINT PRIMARY KEY AUTO_INCREMENT,
    LinkDescription CHAR(1024) DEFAULT NULL,
    LinkData VARCHAR(1024) DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE TextList(
    Uid BIGINT PRIMARY KEY AUTO_INCREMENT,
    TextDescription VARCHAR(256) DEFAULT NULL,
    TextData VARCHAR(1024) DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT QuestionnaireList SET Uid = 11001,QuestionnaireName = '样卷1',QuestionnaireDescription = '仅供测试';
INSERT QuestionList SET Uid = 11001001,Info = 110201211021,QuestionName = '您的谈过恋爱嘛？';
INSERT ChoiceList SET Uid = 11001001001,Info = ChoiceName = '是的';
INSERT ChoiceList SET Uid = 11001001002,Info = ChoiceName = '不是';
