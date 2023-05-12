package tutorial.model;

public class products {
	    int id;
	    String pName;
	    String pDesc;
	    int price;
	    String cat;
	    String img;

	    public products() {
	    }

	    public products(int id, String pName, String pDesc, int price, String cat,String img) {
	        this.id = id;
	        this.pName = pName;
	        this.pDesc = pDesc;
	        this.price = price;
	        this.cat = cat;
	        this.img=img;
	    }
	    public products(int id, String pName, String pDesc, int price) {
	        this.id = id;
	        this.pName = pName;
	        this.pDesc = pDesc;
	        this.price = price;
	        this.cat=null;
	        this.img=null;
	    }

	    public products(String pName, String pDesc, int price, String cat,String img) {
	    	 this.pName = pName;
		        this.pDesc = pDesc;
		        this.price = price;
		        this.cat = cat;
		        this.img=img;
	    }
	    public products(int id,String pName, String pDesc, int price,String img) {
	    	this.id=id;
	    	 this.pName = pName;
		        this.pDesc = pDesc;
		        this.price = price;
		        
		        this.img=img;
	    }

	    public String getImg() {
			return img;
		}

		public void setImg(String img) {
			this.img = img;
		}

		public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getpName() {
	        return pName;
	    }

	    public void setpName(String pName) {
	        this.pName = pName;
	    }

	    public String getpDesc() {
	        return pDesc;
	    }

	    public void setpDesc(String pDesc) {
	        this.pDesc = pDesc;
	    }

	    public int getprice() {
	        return price;
	    }

	    public void setprice(int price) {
	        this.price = price;
	    }

	    public String getCat() {
	        return cat;
	    }

	    public void setCat(String cat) {
	        this.cat = cat;
	    }

	    @Override
	    public String toString() {
	        return "Products{" + "id=" + id + ", Product Name =" + pName + ", Product Desc =" + pDesc + ", Price =" + price + ", cat=" + cat + '}';
	    }


}
