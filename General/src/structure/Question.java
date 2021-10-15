package structure;

/**
 * 问卷的单个问题，有多个分类
 *      1   选择题
 *      2   文字题
 *      3   填空题
 *      4
 */
public abstract class Question {
    String string;
    String description;
    long UID;
    Answer answer;

    public Question(String string, String description, int UID) {
        this.string = string;
        this.description = description;
        this.UID = UID;
    }


    public String Output(){
        return "";


    }
}
