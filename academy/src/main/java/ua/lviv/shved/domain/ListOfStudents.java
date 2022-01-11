package ua.lviv.shved.domain;

import java.sql.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "listOfStudents")
public class ListOfStudents {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "user", referencedColumnName = "id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "enrollment", referencedColumnName = "id")
	private Enrollment enrollment;
	
	@Column(name = "registration_date")
	private Date registrationDate;

	public ListOfStudents() {
	}
	public ListOfStudents(User user, Enrollment enrollment, Date registrationDate) {
		this.user = user;
		this.enrollment = enrollment;
		this.registrationDate = registrationDate;
	}
	public ListOfStudents(Integer id, User user, Enrollment enrollment, Date registrationDate) {
		super();
		this.id = id;
		this.user = user;
		this.enrollment = enrollment;
		this.registrationDate = registrationDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Enrollment getEnrollment() {
		return enrollment;
	}
	public void setEnrollment(Enrollment enrollment) {
		this.enrollment = enrollment;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	@Override
	public int hashCode() {
		return Objects.hash(enrollment, id, registrationDate, user);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ListOfStudents other = (ListOfStudents) obj;
		return Objects.equals(enrollment, other.enrollment) && Objects.equals(id, other.id)
				&& Objects.equals(registrationDate, other.registrationDate) && Objects.equals(user, other.user);
	}
	@Override
	public String toString() {
		return "ListOfStudents [id=" + id + ", user=" + user + ", enrollment=" + enrollment + ", registrationDate="
				+ registrationDate + "]";
	}
	
	
}
