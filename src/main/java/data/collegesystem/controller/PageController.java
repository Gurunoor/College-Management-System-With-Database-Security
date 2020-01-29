package data.collegesystem.controller;

import org.springframework.ui.Model;
import java.sql.*;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64DecoderStream;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64EncoderStream;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	private static Cipher ecipher;
	private static Cipher dcipher;
	static SecretKeySpec key;
	private static SecretKey key1;
	static BASE64Encoder encoder = new BASE64Encoder();
	static BASE64Decoder decoder = new BASE64Decoder();

	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/addteacherbook")
	public String addteacherbook() {
		return "addteacherbook";
	}
	@RequestMapping("/contactus")
	public String contactus() {
		return "contactus";
	}


	@RequestMapping("/newstudentlogin")
	public String newstudentlogin() {
		return "newstudentlogin";
	}
	@RequestMapping("/showbooks")
	public String showbooks() {
		return "showbooks";
	}
	@RequestMapping("/shownotes")
	public String shownotes() {
		return "shownotes";
	}
	@RequestMapping("/teachercircular")
	public String teachercircular() {
		return "teachercircular";
	}

	@RequestMapping("/studentcircular")
	public String studentcircular() {
		return "studentcircular";
	}

	@RequestMapping("/feedback")
	public String feedback() {
		return "feedback";
	}

	@RequestMapping("/studentlogin")
	public String studentlogin() {
		return "studentlogin";
	}

	@RequestMapping("/teacherlogin")
	public String teacherlogin() {
		return "teacherlogin";
	}

	@RequestMapping("/newteacherlogin")
	public String newteacherlogin() {
		return "newteacherlogin";
	}

	@RequestMapping("/teacherlog")
	public String teacherlog() {
		return "teacherlog";
	}

	@RequestMapping("/studentlog")
	public String studentlog() {
		return "studentlog";
	}

	@RequestMapping("/addnotes")
	public String addnotes() {
		return "addnotes";
	}

	@RequestMapping("/mail")
	public String display(HttpServletRequest req, Model m) {
		String name = req.getParameter("name");
		String emailid = req.getParameter("emailid");
		String comment = req.getParameter("comment");
		String phone = req.getParameter("phone");
		m.addAttribute("message", name);
		// System.out.println(comment);

		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo("gurunoorsingh218@gmail.com");
		email.setSubject("feedback");
		email.setText("Name:" + name + "   Phone No.:" + phone + "  EmailId:" + emailid + "  Comment:" + comment);

		// sends the e-mail
		mailSender.send(email);
		String msg = "Thanks For Feedback";
		m.addAttribute("message", msg);
		return "feedback";

	}
	@RequestMapping(value = "savebookfile", method = RequestMethod.POST)
	public ModelAndView savebookimage(@RequestParam CommonsMultipartFile file, @RequestParam("title") String t,
			@RequestParam("sdepartment") String dep, HttpSession session) throws Exception {

		// ServletContext context = session.getServletContext();
		String path = "C:/Users/gurun/eclipse-workspace/collegesystem/src/main/webapp/WEB-INF/images/book";
		String filename = file.getOriginalFilename();

		System.out.println(path + "/" + filename);

		byte[] bytes = file.getBytes();

		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));

		stream.write(bytes);
		stream.flush();
		stream.close();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			st.executeUpdate("insert into book(title,dep,file)values ('" + t + "','" + dep + "','" + path + "')");
		} catch (Exception obj) {
			System.out.println("adminerror" + obj.getMessage());
		}

		return new ModelAndView("addbook", "filesuccess", "File successfully saved!");
	}
	@RequestMapping(value = "savefile", method = RequestMethod.POST)
	public ModelAndView saveimage(@RequestParam CommonsMultipartFile file, @RequestParam("title") String t,
			@RequestParam("sdepartment") String dep, HttpSession session) throws Exception {

		// ServletContext context = session.getServletContext();
		String path = "C:/Users/gurun/eclipse-workspace/collegesystem/src/main/webapp/WEB-INF/images/pdf";
		String filename = file.getOriginalFilename();

		System.out.println(path + "/" + filename);

		byte[] bytes = file.getBytes();

		BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));

		stream.write(bytes);
		stream.flush();
		stream.close();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			st.executeUpdate("insert into notes(title,dep,file)values ('" + t + "','" + dep + "','" + path + "')");
		} catch (Exception obj) {
			System.out.println("adminerror" + obj.getMessage());
		}

		return new ModelAndView("addnotes", "filesuccess", "File successfully saved!");
	}

	@RequestMapping("/teachercheck")
	public String teachercheck(@RequestParam("teacherid") String teacherid,
			@RequestParam("teacherpassword") String teacherpassword, @RequestParam("emailid") String emailid, Model m) {
		String s = "", password = "", name = "";
		String key2 = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from teacherlogin where teacherid ='" + teacherid
					+ "'and teacheremail='" + emailid + "'");
			int i = 0;
			while (res.next()) {
				i++;
				name = res.getString(2);
				password = res.getString(3);
				key2 = res.getString(5);

			}
			if (i > 0) {
				dcipher = Cipher.getInstance("DES");
				byte[] encodedKey = decoder.decodeBuffer(key2);
				key = new SecretKeySpec(encodedKey, 0, encodedKey.length, "DES");
				dcipher.init(Cipher.DECRYPT_MODE, key);
				String decrypted = decrypt(password);
				// System.out.println(key);
				// System.out.println(teacherpassword);
				// System.out.println(decrypted);
				if (decrypted.equals(teacherpassword)) {
					m.addAttribute("name", name);
					s = "teacherlog";
				} else {
					String msg = "Sorry . You entered an incorrect password";
					m.addAttribute("message", msg);
					s = "teacherlogin";
				}

			} else if (i == 0) {

				String msg = "Sorry . You entered Wrong emailid or id";
				m.addAttribute("message", msg);
				s = "teacherlogin";
			}

		} catch (Exception obj) {
			s = obj.getMessage();
		}
		return s;
	}

	@RequestMapping("/teacherinsert")
	public String teacherinsert(@RequestParam("teacherid") String teacherid,
			@RequestParam("teachername") String teachername, @RequestParam("teacherpassword") String teacherpassword,
			@RequestParam("emailid") String emailid, Model m) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from teacher where teacherid='" + teacherid + "'");
			int i = 0;
			while (res.next()) {
				i++;
			}
			if (i > 0) {
				key1 = KeyGenerator.getInstance("DES").generateKey();
				ecipher = Cipher.getInstance("DES");
				ecipher.init(Cipher.ENCRYPT_MODE, key1);
				String keyString = encoder.encode(key1.getEncoded());
				String encrypted = encrypt(teacherpassword);
				// System.out.println(encrypted);
				String sql = "insert into teacherlogin values(" + teacherid + ",'" + teachername + "','" + encrypted
						+ "','" + emailid + "','" + keyString + "')";
				st.executeUpdate(sql);
				return "teacherlogin";
			} else {
				String msg = "Sorry . Your ID is not in database plz try again later";
				m.addAttribute("message", msg);
				return "newteacherlogin";
			}
		} catch (Exception obj) {
			System.out.print(obj.getMessage());
			return "newteacherlogin";
		}
	}

	@RequestMapping("/studentcheck")
	public String studentcheck(@RequestParam("studentid") String studentid,
			@RequestParam("studentpassword") String studentpassword, @RequestParam("emailid") String emailid, Model m) {
		String s = "", password = "", name = "";
		String key2 = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from studentlogin where studentid ='" + studentid
					+ "'and studentemail='" + emailid + "'");
			int i = 0;
			while (res.next()) {
				i++;
				name = res.getString(2);
				password = res.getString(3);
				key2 = res.getString(5);

			}
			if (i > 0) {
				dcipher = Cipher.getInstance("DES");
				byte[] encodedKey = decoder.decodeBuffer(key2);
				key = new SecretKeySpec(encodedKey, 0, encodedKey.length, "DES");
				dcipher.init(Cipher.DECRYPT_MODE, key);
				String decrypted = decrypt(password);
				// System.out.println(key);
				// System.out.println(studentpassword);
				// System.out.println(decrypted);
				if (decrypted.equals(studentpassword)) {
					m.addAttribute("name", name);
					s = "studentlog";
				} else {
					String msg = "Sorry . You entered an incorrect password";
					m.addAttribute("message", msg);
					s = "studentlogin";
				}

			} else if (i == 0) {

				String msg = "Sorry . You entered Wrong emailid or id";
				m.addAttribute("message", msg);
				s = "studentlogin";
			}

		} catch (Exception obj) {
			s = obj.getMessage();
		}
		return s;
	}

	@RequestMapping("/studentinsert")
	public String studentinsert(@RequestParam("studentid") String studentid,
			@RequestParam("studentname") String studentname, @RequestParam("studentpassword") String studentpassword,
			@RequestParam("emailid") String emailid, Model m) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from student where studentid='" + studentid + "'");
			int i = 0;
			while (res.next()) {
				i++;
			}
			if (i > 0) {
				key1 = KeyGenerator.getInstance("DES").generateKey();
				ecipher = Cipher.getInstance("DES");
				ecipher.init(Cipher.ENCRYPT_MODE, key1);
				String keyString = encoder.encode(key1.getEncoded());
				String encrypted = encrypt(studentpassword);
				// System.out.println(encrypted);
				String sql = "insert into studentlogin values(" + studentid + ",'" + studentname + "','" + encrypted
						+ "','" + emailid + "','" + keyString + "')";
				st.executeUpdate(sql);
				return "studentlogin";
			} else {
				String msg = "Sorry . Your ID is not in database plz try again later";
				m.addAttribute("message", msg);
				return "newstudentlogin";
			}
		} catch (Exception obj) {
			System.out.print(obj.getMessage());
			return "newstudentlogin";
		}
	}

	public static String encrypt(String str) {
		try {
			// encode the string into a sequence of bytes using the named charset
			// storing the result into a new byte array.
			byte[] utf8 = str.getBytes("UTF8");
			byte[] enc = ecipher.doFinal(utf8);
// encode to base64
			enc = BASE64EncoderStream.encode(enc);
			return new String(enc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String decrypt(String str) {
		try {
			// decode with base64 to get bytes
			byte[] dec = BASE64DecoderStream.decode(str.getBytes());
			byte[] utf8 = dcipher.doFinal(dec);
// create new string based on the specified charset
			return new String(utf8, "UTF8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}