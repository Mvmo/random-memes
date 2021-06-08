defmodule RandomMemes.Application do
  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children() do
    [RandomMemes.Entrypoint]
  end

  defp opts() do
    [
      strategy: :one_for_one,
      name: RandomMemes.Supervisor
    ]
  end
end
