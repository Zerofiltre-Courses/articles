package behavioral.memento;

import behavioral.memento.Editor;
import behavioral.memento.History;

public class Main {
    public static void main(String[] args) {

        var editor = new Editor();
        var history = new History();

        editor.setContent("my content 1");
        history.push(editor.createState());
        editor.setContent("my content 2");
        history.push(editor.createState());
        editor.setContent("my content 3");
        editor.restore(history.pop()); // will undo "my content 3"
        System.out.println(editor.getContent()); // Editor.content = "my content 2"
    }
}
