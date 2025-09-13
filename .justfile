# Like GNU `make`, but `just` rustier.
# https://just.systems/
# run `just` from this directory to see available commands

alias i := install
alias p := pre_commit
alias b := build
alias r := run
alias ch := check
alias c := clean
alias f := format

# Default command when 'just' is run without arguments
default:
  @just --list

# Install the virtual environment and pre-commit hooks
install:
  @echo "Installing..."
  @pixi shell
  @pixi run pre-commit install

# Run pre-commit
pre_commit:
  @echo "Running pre-commit..."
  @pixi run pre-commit run -a

# Build the project
build:
  @echo "Building..."
  @pixi run build

# Run a package
run *args='talker':
  @echo "Running..."
  @pixi run {{args}}

# Run code quality tools
check:
  @echo "Checking..."
  @pixi run pre-commit run -a
  @pixi run mypy .
  @pixi run deptry . --ignore=DEP002,DEP003

# Remove build artifacts and non-essential files
clean:
  @echo "Cleaning..."
  @find . -type d -name ".pixi" -exec rm -r {} +
  @find . -type d -name "__pycache__" -exec rm -r {} +
  @find . -type d -name "*.ruff_cache" -exec rm -r {} +
  @find . -type d -name "build" -exec rm -r {} +
  @find . -type d -name "install" -exec rm -r {} +
  @find . -type d -name "log" -exec rm -r {} +

# Format the project
format:
  @echo "Formatting..."
  @find . -name "*.nix" -type f -exec nixfmt {} \;
