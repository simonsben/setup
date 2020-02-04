# Stylesheet notes

Notes on stylesheet usage.
First note: DON'T USE CSS.
Second note: use sass.

# General usage

## General form

* Define class with `.class_name: {}`
* Define tag with `tag_name: {}`
* Define a css parameter (ex. hover) with `:parameter_name: {}`

## Inheritance

General inheritance is imply one class within another, ex

```scss
.base_class {
	div {
		margin: 1px;
	}
}
```

This would give all div's within `base_class` a margin of 1px.
To restrict inheritance to a base class that is a div, you could do

```scss
.base_class {
	&div {
		margin: 1px;
	}
}
```

To restrict the inheritance to the first level of children, use 

```scss
.base_class {
	> div {
		margin: 1px;
	}
}
```

