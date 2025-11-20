package com.springboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.springboot.validator.BookValidator;
import com.springboot.validator.UnitsInStockValidator;


@Configuration

public class ValidationConfig {

	private final UnitsInStockValidator unitsInStockValidator;

	public ValidationConfig(UnitsInStockValidator unitsInStockValidator) {
		this.unitsInStockValidator = unitsInStockValidator;
	}

	@Bean
    public BookValidator bookValidator() {
		BookValidator bookValidator = new BookValidator();       
		
		bookValidator.springValidators.add(unitsInStockValidator);
		
		
        return bookValidator;
    }
	

}
