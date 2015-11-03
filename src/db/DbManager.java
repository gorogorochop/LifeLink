package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * ��� �����ͺ��̽� ���� ������ ����ϴ� �༮.<br><br>
 * 
 * ���ÿ��� �׽�Ʈ�� �� ���ڿ� �°� �Է��ؾ� �ϴ� �κ��� ������ ����.
 * 
 * <p>���� ����: 2015-11-02</p>
 * 
 * @author Moon
 *
 */
public class DbManager {
	////////////////////////////////////////////////////////////////////////////
	// ���ڿ� �°� �Է��ؾ� �ϴ� �κ�
	////////////////////////////////////////////////////////////////////////////
	/**
	 * �׽�Ʈ�ϴ� ���� ����ȣ��Ʈ�� �����ͺ��̽� ��Ű�� �̸��� �Է��ؾ���. 
	 */
	private static final String databaseName = "lifelink";

	/**
	 * mysql ����ȣ��Ʈ user name �Է��ؾ���.
	 */
	private static final String user = "root";

	/**
	 * mysql ����ȣ��Ʈ password �Է��ؾ���.
	 */
	private static final String password = "moon";
	////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////

	@SuppressWarnings("unused")
	private static final String TABLE_CATEGORY_LIST = "category_list";
	
	@SuppressWarnings("unused")
	private static final String TABLE_WORD_LIST = "word_list";
	
	@SuppressWarnings("unused")
	private static final String TABLE_EXCEPTIONAL_WORD_LIST = "exceptional_word_list";
	
	@SuppressWarnings("unused")
	private static final String TABLE_REPORTED_LIST = "reported_list";
	
	@SuppressWarnings("unused")
	private static final String TABLE_TRAINING_DATA = "training_data";

	private static final String url = "jdbc:mysql://localhost/" + databaseName;

	private static volatile DbManager instance; 

	/**
	 * DbManager Ŭ������ ����ϰ� ������ �� �޼ҵ带 ���ؼ� ��ü�� ������ �� �ִ�.<br><br>
	 * 
	 * �� Ŭ������ �̱��� ������ ����Ǿ� <b>{@code new}</b> �� ���� ��ü �Ҵ��� �ȵǵ��� �������ִ�.
	 * �� �޼ҵ带 �θ��� ��ü�� ������� �� ��ü�� �޾ƿ��� ��ü�� ���� ���
	 * ��ü�� �����Ѵ�.
	 * 
	 * @return DbManager instance.
	 */
	public static DbManager getInstance() {
		if(instance == null) {
			synchronized(DbManager.class) {
				if(instance == null)
					instance = new DbManager();
			}
		}
		return instance;
	}

	private DbManager() {
	}

	/**
	 * local host database���� ������ ����.
	 * 
	 * @return Connection object.
	 */
	private Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	/**
	 * ���̺��� tuple ������ �����Ѵ�.
	 * 
	 * @param tableName ���̺� �̸��� ��<br>
	 * {@link #TABLE_CATEGORY_LIST}<br>
	 * {@link #TABLE_WORD_LIST}<br>
	 * {@link #TABLE_EXCEPTIONAL_WORD_LIST}<br>
	 * {@link #TABLE_REPORTED_LIST}<br>
	 * {@link #TABLE_TRAINING_DATA}<br>
	 * �߿� �ϳ��� ��
	 * 
	 * @return integer value of ���̺� tuple�� ����
	 */
	public int queryCountOfTable(String tableName) {
		Connection connection = getConnection();
		int result = -1;
		String query = "select count(*) from ?";
		PreparedStatement ps;

		try {
			ps = connection.prepareStatement(query);
			ps.setString(1, tableName);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * �����ͺ��̽��� ī�װ��� �߰��Ѵ�.
	 * 
	 * @param categoryName �߰��� ī�װ� �̸�.
	 */
	public void insertCategory(String categoryName) {
		try {
			Connection connection = getConnection();
			String sql = "insert into category_list(name) values(?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, categoryName);
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * ī�װ��� �����Ѵ�.
	 * 
	 * @param id ������ ī�װ��� ���̵�
	 * @param categoryName ���ο� �̸�
	 */
	public void modifyCategory(int id, String newCategoryName) {
		try {
			Connection connection = getConnection();
			String sql = "update category_list set category=? where id=" + id;
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, newCategoryName);
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * ī�װ��� �����Ѵ�.
	 * 
	 * @param id ������ ī�װ��� ���̵�
	 * @param categoryName ���ο� �̸�
	 */
	public void modifyWord(int id, String newCategoryName) {
		try {
			Connection connection = getConnection();
			String sql = "update category_list set category=? where id=" + id;
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, newCategoryName);
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * ��� ī�װ� �̸����� �����Ѵ�.
	 * 
	 * @return {@code ArrayList<String>} names of all categories
	 */
	public ArrayList<String> queryAllCategory() {
		ArrayList<String> resultList = new ArrayList<>();
		try {
			Connection connection = getConnection();
			Statement statement = null;
			ResultSet resultSet = null;

			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from category_list");

			while(resultSet.next()) {
				resultList.add(resultSet.getString(2));
			}
			statement.close();
			resultSet.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultList;
	}

	/**
	 * ī�װ� ���̵� �޾ƿ´�.
	 * 
	 * @param category ���̵� �˰���� ī�װ� �̸�
	 * @return integer value of category id
	 */
	public int queryCategoryId(String category) {
		Connection connection = getConnection();
		PreparedStatement ps = null;
		ResultSet resultSet = null;
		int result = -1;

		try {
			String sql = "select id from category_list where category=?";
			ps = connection.prepareStatement(sql);
			ps.setString(1, category);
			resultSet = ps.executeQuery();

			if(resultSet.next())
				result = resultSet.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * �ܾ �߰��Ѵ�.
	 * 
	 * @param word �߰��� �ܾ�
	 * @param categoryId �� �ܾ �����ִ� ī�װ��� ���̵�
	 */
	public void insertWord(String word, int categoryId) {
		try {
			Connection connection = getConnection();
			String sql = "insert into word_list(word, category_id) values(?, ?)";

			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, word);
			ps.setInt(2, categoryId);

			ps.execute();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * �ܾ �߰��Ѵ�.
	 * 
	 * @param word �߰��� �ܾ�
	 * @param categoryId �� �ܾ �����ִ� ī�װ� �̸�
	 */
	public void insertWord(String word, String category) {
		int categoryId = queryCategoryId(category);
		insertWord(word, categoryId);
	}

	/**
	 * {@link #TABLE_WORD_LIST} ���̺��� ��� �ܾ���� �����Ѵ�.
	 * 
	 * @return {@code ArrayList<Word>} All of the words in the word list table.
	 */
	public ArrayList<Word> queryAllWord() {
		Connection connection = getConnection();
		ArrayList<Word> wordList = new ArrayList<>();
		try {
			String sql = "select * from word_list";
			PreparedStatement ps;
			ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next())
				wordList.add(new Word(rs.getString(2), rs.getInt(3)));

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return wordList;
	}
	
	/**
	 * Ư�� ī�װ��� ���� �ܾ�� ������ ����
	 * 
	 * @param categoryId �ܾ ����� �˰���� ī�װ��� ���̵�
	 * @return �ܾ��� ����
	 */
	public int queryCountOfWordList(int categoryId) {
		Connection connection = getConnection();
		int result = -1;
		String query = "select count(*) from word_list where category_id=?";
		PreparedStatement ps;

		try {
			ps = connection.prepareStatement(query);
			ps.setInt(1, categoryId);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * Ư�� ī�װ��� ���ϴ� �ܾ� ����Ʈ�� ����
	 * 
	 * @param categoryId ������ �ܾ���� ī�װ� ���̵� 
	 * @return {@code ArrayList<Word>} �ܾ� ����Ʈ
	 */
	public ArrayList<Word> queryWordList(int categoryId) {
		Connection connection = getConnection(); 
		ArrayList<Word> wordList = new ArrayList<>();
		try {
			String sql = "select * from word_list where category_id=?";
			PreparedStatement ps;
			ps = connection.prepareStatement(sql);
			ps.setInt(1, categoryId);
			ResultSet rs = ps.executeQuery();

			while(rs.next())
				wordList.add(new Word(rs.getString(2), rs.getInt(3)));

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return wordList;
	}
}