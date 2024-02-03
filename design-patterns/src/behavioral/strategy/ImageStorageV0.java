package behavioral.strategy;

public class ImageStorageV0 {

    // Could use ENUM
    private String compressor;
    private String filter;

    public ImageStorageV0(String compressor, String filter) {
        this.compressor = compressor;
        this.filter = filter;
    }

    public void store(String fileName){
        if("jpeg".equals(compressor))
            // call method to compress the image using the JPEG algorithm
            System.out.println("Compressing using JPEG");
        else if("png".equals(compressor))
            // call method to compress the image using the PNG algorithm
            System.out.println("Compressing using PGN");

        if("high-contrast".equals(filter))
            System.out.println("Applying high contrast filter");
        else if("b&w".equals(filter))
            System.out.println("Compressing using PGN");
    }
}
