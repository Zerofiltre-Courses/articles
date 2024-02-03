package tech.zerofiltre.qrcode;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.templateproject.qrcode.matrix.MatrixToImageWriter;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

public class QRCodeGenerator {
    public static void main(String[] args) throws WriterException, IOException {
        getQrFile();
    }

    static void getQrFile() throws WriterException, IOException {
        String contents = "Code";
        BarcodeFormat barcodeFormat = BarcodeFormat.QR_CODE;

        int width = 300;
        int height = 300;

        MultiFormatWriter barcodeWriter = new MultiFormatWriter();
        BitMatrix matrix = barcodeWriter.encode(contents, barcodeFormat, width, height);
        BufferedImage qrCodeImg = MatrixToImageWriter.toBufferedImage(matrix);

        // Enregistrez l'image dans un fichier
        File qrFile = new File("qrcode.png");
        ImageIO.write(qrCodeImg, "PNG", qrFile);
    }
}
