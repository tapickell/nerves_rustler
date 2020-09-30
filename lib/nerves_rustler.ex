defmodule NervesRustler.MathStuff do
  use Rustler, otp_app: :nerves_rustler, crate: :mathstuff

  # When loading a NIF module, dummy clauses for all NIF function are required.
  # NIF dummies usually just error out when called when the NIF is not loaded, as that should never normally happen.
  def add(_arg1, _arg2), do: :erlang.nif_error(:nif_not_loaded)
end

defmodule NervesRustler do
  def hello do
    NervesRustler.MathStuff.add(40, 2)
  end
end
