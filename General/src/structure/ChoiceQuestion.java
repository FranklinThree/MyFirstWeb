package structure;

import java.util.ArrayList;

public class ChoiceQuestion extends Question{
    ArrayList<Choice> choices;

    public ChoiceQuestion(String string, String description, int UID) {
        super(string, description, UID);
    }
}
