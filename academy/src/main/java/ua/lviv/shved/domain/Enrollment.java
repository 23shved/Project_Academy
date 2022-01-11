package ua.lviv.shved.domain;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "enrollment")
public class Enrollment {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column
	private String faculty;
	
	@Column
	private String speciality;
	
	@Column
	private Double mathZNO;
	
	@Column
	private Double englishZNO;
	
	@Column
	private Double internalTest;
	
	@Column
	private Double averageZNO;
	
	@Lob
	private String encodedImage;



	public Enrollment() {}
	
	public Enrollment(String faculty, String speciality, Double mathZNO,  Double englishZNO, Double internalTest) {
		this.faculty = faculty;
		this.speciality = speciality;
		this.mathZNO = mathZNO;
		this.englishZNO = englishZNO;
		this.internalTest = internalTest;
	}

	public void calculateAverage() {
		averageZNO = (mathZNO*0.5)+(englishZNO*0.3)+(internalTest*0.2);
	}
		
	public Double getMathZNO() {
		return mathZNO;
	}

	public void setMathZNO(Double mathZNO) {
		this.mathZNO = mathZNO;
	}

	public Double getEnglishZNO() {
		return englishZNO;
	}

	public void setEnglishZNO(Double englishZNO) {
		this.englishZNO = englishZNO;
	}

	public Double getInternalTest() {
		return internalTest;
	}

	public void setInternalTest(Double internalTest) {
		this.internalTest = internalTest;
	}

	public Enrollment(Integer id, String faculty, String speciality, Double mathZNO,  Double englishZNO, Double internalTest) {
		this.id = id;
		this.faculty = faculty;
		this.speciality = speciality;
		this.mathZNO = mathZNO;
		this.englishZNO = englishZNO;
		this.internalTest = internalTest;
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public Double getAverageZNO() {
		return averageZNO;
	}

	public void setAverageZNO(Double averageZNO) {
		this.averageZNO = averageZNO;
	}

	public String getEncodedImage() {
		return encodedImage;
	}

	public void setEncodedImage(String encodedImage) {
		this.encodedImage = encodedImage;
	}

	@Override
	public int hashCode() {
		return Objects.hash(averageZNO, encodedImage, faculty, id, speciality);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Enrollment other = (Enrollment) obj;
		return Objects.equals(averageZNO, other.averageZNO) && Objects.equals(encodedImage, other.encodedImage)
				&& Objects.equals(faculty, other.faculty) && Objects.equals(id, other.id)
				&& Objects.equals(speciality, other.speciality);
	}

	@Override
	public String toString() {
		return "Enrollment [id=" + id + ", faculty=" + faculty + ", speciality=" + speciality + ", averageZNO="
				+ averageZNO + ", encodedImage=" + encodedImage + "]";
	}


	
}
