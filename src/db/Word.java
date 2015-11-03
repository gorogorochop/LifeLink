package db;

public class Word {
	private int id;
	private String word;
	private int categoryId;
	
	public Word(String word, int categoryId) {
		this.word = word;
		this.categoryId = categoryId;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
}
