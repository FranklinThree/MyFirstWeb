-- 一个答卷一份表，一个题目一个记录
DROP TABLE IF EXISTS QuestionnaireDatabase;
CREATE DATABASE QuestionnaireDatabase;
USE QuestionnaireDatabase;

DROP TABLE IF EXISTS QuestionnaireLists;
DROP TABLE IF EXISTS QuestionLists;
DROP TABLE IF EXISTS ChoiceLists;


CREATE TABLE QuestionnaireLists(
    Uid BIGINT PRIMARY KEY,
    QuestionnaireName VARCHAR(64) NOT NULL,
    QuestionnaireDescription VARCHAR(512) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;


CREATE TABLE QuestionLists(
    Uid                 BIGINT PRIMARY KEY,
    Info                BIGINT        DEFAULT NULL,
    QuestionName        VARCHAR(1024) NOT NULL,
    QuestionDescription VARCHAR(256)  DEFAULT NULL,
    QuestionAnswer      BIGINT DEFAULT NULL,
    QuestionLink        BIGINT DEFAULT NULL
)AUTO_INCREMENT = 1 ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE ChoiceLists(
    Uid                 BIGINT PRIMARY KEY,
    Info                BIGINT DEFAULT NULL,
    ChoiceName          VARCHAR(1024) NOT NULL,
    ChoiceDescription   VARCHAR(256) DEFAULT NULL,
    ChoiceData          VARCHAR(1024) DEFAULT NULL,
    ChoiceLink          BIGINT DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;


INSERT QuestionnaireLists SET Uid = 11001,QuestionnaireName = '样卷1',QuestionnaireDescription = '仅供测试';
INSERT QuestionLists SET Uid = 11001001,QuestionName = '您的谈过恋爱嘛？';
INSERT ChoiceLists SET Uid = 11001001001,Info = ChoiceName = '是';