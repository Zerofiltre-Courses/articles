package creational.builder;

public class BuilderMain {
    public static void main(String[] args) {
        var presentation = new Presentation();
        presentation.addSlide(new Slide("Slide 1"));
        presentation.addSlide(new Slide("Slide 2"));
        presentation.addSlide(new Slide("Slide 3"));

        var pdfBuilder = new PdfDocumentBuilder();
        presentation.export(pdfBuilder);
        pdfBuilder.getPdfDocument();

        System.out.println("--------------------");

        var movieBuilder = new MovieBuilder();
        presentation.export(movieBuilder);
        movieBuilder.getMovie();
    }
}
