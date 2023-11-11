package com.a2m.sso.model.req;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotEmpty;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LoginReq {
    @NotEmpty
    private String username;
    @NotEmpty
    private String password;
}
