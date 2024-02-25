doc:
	RUSTDOCFLAGS="--html-in-header katex.html" cargo doc --no-deps
	echo "./target/docs/math-in-docs/index.html"
