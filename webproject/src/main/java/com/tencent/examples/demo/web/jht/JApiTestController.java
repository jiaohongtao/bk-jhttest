package com.tencent.examples.demo.web.jht;

import com.tencent.bk.api.Api;
import com.tencent.bk.utils.json.JsonUtil;
import com.tencent.examples.demo.model.ApiTest;
import com.tencent.examples.demo.model.PageInfo;
import com.tencent.examples.dto.RespDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/api")
public class JApiTestController {

	@RequestMapping("/test")
	public @ResponseBody String apiTest() {


		int result = 1;
		String message = "hello";
		String data = "world";

		PageInfo<List<ApiTest>> pageInfo = new PageInfo<>();
		List<ApiTest> apiTests = new ArrayList<>();
		ApiTest apiTest = new ApiTest();
		apiTest.setResult(result);
		apiTest.setMessage(message);
		apiTest.setData(data);
		apiTests.add(apiTest);

		pageInfo.setRows(apiTests);
		pageInfo.setTotal(apiTests.size());


		/*System.out.println("-==============");
		System.out.println(pageInfo.getRows());
		System.out.println("=================");*/

		//String jsonStr =JsonUtil.toJson(pageInfo);

		//{'result':True,"message":"hello","data":"world"}
		// return JsonUtil.toJson(pageInfo);
		/*List<ApiTest> apiList = pageInfo.getRows();

		System.out.println(JsonUtil.toJson(pageInfo.getRows()));
		ApiTest apiTests1 = apiList.get(0);
		System.out.println(apiTests1);
		JsonUtil.toJson(apiTests1);*/
		return JsonUtil.toJson(pageInfo.getRows());
	}
}
