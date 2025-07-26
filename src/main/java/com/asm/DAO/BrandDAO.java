package com.asm.DAO;

import java.util.List;

import com.asm.model.Brand;



public interface BrandDAO {
	/** Truy vấn tất cả phòng ban */
    List<Brand> findAll();

    /** Truy vấn phòng ban theo mã */
    Brand findById(int id);

    /** Thêm mới phòng ban */
    void create(Brand item);

    /** Cập nhật thông tin phòng ban */
    void update(Brand item);

    /** Xóa phòng ban theo mã */
    void deleteById(int id);
}
