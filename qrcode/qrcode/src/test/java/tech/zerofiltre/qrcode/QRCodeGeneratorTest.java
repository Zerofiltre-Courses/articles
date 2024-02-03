package tech.zerofiltre.qrcode;

import static org.junit.Assert.assertTrue;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.junit.Test;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.common.HybridBinarizer;

import cn.luues.tool.qrcode.BufferedImageLuminanceSource;

/**
 * Unit test for simple App.
 */
public class QRCodeGeneratorTest {
    /**
     * Rigorous Test :-)
     * 
     * @throws IOException
     * @throws WriterException
     * @throws NotFoundException
     */
    @Test
    public void shouldAnswerWithTrue() throws WriterException, IOException, NotFoundException {
        QRCodeGenerator.getQrFile();

        File qrFile = new File("qrcode.png");

        // Chargez l'image du QR code
        BufferedImage qrImage = ImageIO.read(qrFile);

        // Convertissez l'image en une source de luminosité
        LuminanceSource source = new BufferedImageLuminanceSource(qrImage);
        BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));

        // Utilisez le MultiFormatReader pour lire le QR code
        MultiFormatReader reader = new MultiFormatReader();
        Result result = reader.decode(bitmap);
        assertTrue("Code".equals(result.getText()));
    }
}
