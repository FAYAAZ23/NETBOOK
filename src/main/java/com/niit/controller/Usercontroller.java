/*package com.niit.controller;

public class Usercontroller {

}
*/

package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Usercontroller {
	@RequestMapping("/")
	public String Homepage() {
		return "user";
	}
}
