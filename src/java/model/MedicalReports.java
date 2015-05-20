package model;
// Generated May 13, 2015 2:35:10 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * MedicalReports generated by hbm2java
 */
@Entity
@Table(name="medical_reports"
    ,catalog="docnet"
)
public class MedicalReports  implements java.io.Serializable {


     private Integer medicalreportid;
     private String source;
     private int pid;

    public MedicalReports() {
    }

    public MedicalReports(String source, int pid) {
       this.source = source;
       this.pid = pid;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="medicalreportid", nullable=false)
    public Integer getMedicalreportid() {
        return this.medicalreportid;
    }
    
    public void setMedicalreportid(Integer medicalreportid) {
        this.medicalreportid = medicalreportid;
    }

    
    @Column(name="source", nullable=false, length=45)
    public String getSource() {
        return this.source;
    }
    
    public void setSource(String source) {
        this.source = source;
    }

    
    @Column(name="pid", nullable=false)
    public int getPid() {
        return this.pid;
    }
    
    public void setPid(int pid) {
        this.pid = pid;
    }




}


