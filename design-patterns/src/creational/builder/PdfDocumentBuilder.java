package creational.builder;

public class PdfDocumentBuilder implements PresentationBuilder{
    private final PdfDocument document = new PdfDocument();
    @Override
    public void addSlide(Slide slide) {
        document.addPage(slide.getText());
    }

    public PdfDocument getPdfDocument() {
        return document;
    }

    private class PdfDocument {
        public void addPage(String text){
            System.out.println("Adding text to PDF");
        }
    }
}
