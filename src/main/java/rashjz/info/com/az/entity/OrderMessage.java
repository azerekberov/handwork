/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rashjz.info.com.az.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Azik
 */
@Entity
@Table(name = "order_message")
@NamedQueries({
    @NamedQuery(name = "OrderMessage.findAll", query = "SELECT o FROM OrderMessage o"),
    @NamedQuery(name = "OrderMessage.findByPId", query = "SELECT o FROM OrderMessage o WHERE o.pId = :pId"),
    @NamedQuery(name = "OrderMessage.findByMessage", query = "SELECT o FROM OrderMessage o WHERE o.message = :message"),
    @NamedQuery(name = "OrderMessage.findByInsertDate", query = "SELECT o FROM OrderMessage o WHERE o.insertDate = :insertDate"),
    @NamedQuery(name = "OrderMessage.findByStatus", query = "SELECT o FROM OrderMessage o WHERE o.status = :status")})
public class OrderMessage implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "p_id")
    private Integer pId;
    @Size(max = 405)
    @Column(name = "message")
    private String message;
    @Column(name = "insert_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertDate;
    @Size(max = 1)
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "p_id", referencedColumnName = "p_id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Products products;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne(optional = false)
    private Users userId;

    public OrderMessage() {
    }

    public OrderMessage(Integer pId) {
        this.pId = pId;
    }

    public Integer getPId() {
        return pId;
    }

    public void setPId(Integer pId) {
        this.pId = pId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pId != null ? pId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderMessage)) {
            return false;
        }
        OrderMessage other = (OrderMessage) object;
        if ((this.pId == null && other.pId != null) || (this.pId != null && !this.pId.equals(other.pId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rashjz.info.com.az.entity.OrderMessage[ pId=" + pId + " ]";
    }
    
}
