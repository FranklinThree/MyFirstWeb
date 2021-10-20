package structure;

import java.rmi.server.UID;
import java.sql.Connection;
import java.util.ArrayList;

public class Questionnaire {
    long UID;
    String string;
    ArrayList<Question> questions;


    public Questionnaire(String string, ArrayList<Question> questions) {
        this.string = string;
        this.questions = questions;
    }

    public String toString(){

        return "";
    }
    public static Questionnaire New(String data){
        //TODO 直接传输格式化问卷数据生成问卷
        return null;
    }
    public static Questionnaire GetQuestionnaire(Connection conn,String QuestionnaireName){
        //TODO 从数据库中读取数据表
        return null;
    }
}
