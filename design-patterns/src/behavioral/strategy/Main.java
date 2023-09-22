package behavioral.strategy;

public class Main {
    public static void main(String[] args) {
        var imageStorage = new ImageStorage();

        //Compress JPEG and apply B&W filter
        imageStorage.store("image.JPEG", new JpegCompressor(), new BlackAndWhiteFilter());
        // Compress JPEG and apply High contrast filter
        imageStorage.store("image.JPEG", new JpegCompressor(), new HighContrastFilter());
        // Compress PNG and apply High contrast filter
        imageStorage.store("image.PGN", new PngCompressor(), new HighContrastFilter());
    }
}
