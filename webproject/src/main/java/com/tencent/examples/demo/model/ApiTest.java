package com.tencent.examples.demo.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "t_api_test")
public class ApiTest {

	@Id
	@GeneratedValue
	private Integer id;

	@Column(length = 1, unique = true)
	private int result;

	@Column(length = 30, unique = true)
	private String message;

	@Column(length = 30, unique = true)
	private String data;
}
