import os
import angr


PATH = os.path.join(os.path.dirname(__file__), "crackme")


def main():

    proj = angr.Project(PATH, auto_load_libs=False)
    simulation = proj.factory.simgr()

    constraint = lambda s: b"License key accepted" in s.posix.dumps(1)
    simulation.explore(find=constraint)
    if simulation.found:
        pprint(simulation.one_found)


def pprint(solutions):
    """ Helper that prints the solution in a more human readable format

    simulation - angr simulation object that represents the state the program is in
    """

    str_solutions = solutions.posix.dumps(0).replace(
        b'\x00', b'\n').decode('utf8', errors='ignore').strip().split('\n')

    for solution in str_solutions:
        print(f"Flag found: {solution}")


if __name__ == '__main__':
    main()
