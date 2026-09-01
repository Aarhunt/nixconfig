.PHONY: update
update:
	nixos-rebuild switch

.PHONY: clean
clean:
	nix-collect-garbage -d
