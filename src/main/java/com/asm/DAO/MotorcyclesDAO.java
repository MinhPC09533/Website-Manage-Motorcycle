package com.asm.DAO;

import java.util.List;

import com.asm.model.Motorcycles;





public interface MotorcyclesDAO {
	/** Truy vấn tất cả phòng ban */
    List<Motorcycles> findAll();

    /** Truy vấn phòng ban theo mã */
    Motorcycles findById(int id);

    /** Thêm mới phòng ban */
    void create(Motorcycles item);

    /** Cập nhật thông tin phòng ban */
    void update(Motorcycles item);

    /** Xóa phòng ban theo mã */
    void deleteById(int id);
}
