package Mastermind_java;

import javax.crypto.SecretKey;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.net.URLDecoder;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import java.util.Base64;

public class EncryptionUtil {

	private SecretKey encryptionKey;
	private int keySize;
	
	public EncryptionUtil() {
		// TODO Auto-generated constructor stub
		this.keySize = 128;
		this.encryptionKey = null;
	}
	
	public String generateKey() throws Exception {
	    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	    keyGen.init(keySize); // You can choose 128, 192 or 256 bit key size
	    this.encryptionKey = keyGen.generateKey();
	    return Base64.getEncoder().encodeToString(encryptionKey.getEncoded());
	}

	public String encryptAndEncode(String dataFromClient) throws Exception {
	    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    byte[] iv = new byte[cipher.getBlockSize()];
	    new SecureRandom().nextBytes(iv); // Generate a random IV
	    IvParameterSpec ivSpec = new IvParameterSpec(iv);

	    cipher.init(Cipher.ENCRYPT_MODE, encryptionKey, ivSpec);
	    byte[] encrypted = cipher.doFinal(dataFromClient.getBytes());
	    
	    // Combine IV and encrypted data
	    byte[] combinedIvAndEncrypted = new byte[iv.length + encrypted.length];
	    System.arraycopy(iv, 0, combinedIvAndEncrypted, 0, iv.length);
	    System.arraycopy(encrypted, 0, combinedIvAndEncrypted, iv.length, encrypted.length);

	    String dataToEncode = Base64.getEncoder().encodeToString(combinedIvAndEncrypted);
	    return URLEncoder.encode(dataToEncode, StandardCharsets.UTF_8.toString());
	}

	public String decodeAndDecrypt(String encodedData) throws Exception {
		if (encryptionKey == null) {
			return null;
		}
	    String decodedData = URLDecoder.decode(encodedData, StandardCharsets.UTF_8.toString());
	    byte[] combinedIvAndEncrypted = Base64.getDecoder().decode(decodedData);

	    // Extract IV and encrypted data
	    byte[] iv = new byte[16]; // Assuming 16 byte IV
	    System.arraycopy(combinedIvAndEncrypted, 0, iv, 0, iv.length);
	    byte[] encrypted = new byte[combinedIvAndEncrypted.length - iv.length];
	    System.arraycopy(combinedIvAndEncrypted, iv.length, encrypted, 0, encrypted.length);

	    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    IvParameterSpec ivSpec = new IvParameterSpec(iv);

	    cipher.init(Cipher.DECRYPT_MODE, encryptionKey, ivSpec);
	    byte[] original = cipher.doFinal(encrypted);
	    this.encryptionKey = null;
	    return new String(original);
	}

}
